from django.contrib.auth.models import User

from celery.task import task
from celery.utils.log import get_task_logger

from opaque_keys.edx.keys import CourseKey
from student.models import CourseEnrollment, CourseMode
from openedx.core.djangoapps.course_groups.cohorts import (
    get_cohort_by_name, get_cohort, add_user_to_cohort, DEFAULT_COHORT_NAME
)


# TODO: what should the name of this cohort be? What is it for existing courses?
VERIFIED_COHORT = "verified"


LOGGER = get_task_logger(__name__)


@task()
def sync_cohort_with_mode(course_id, user_id):
    """
        TODO: update doc
    """
    course_key = CourseKey.from_string(course_id)
    user = User.objects.get(id=user_id)
    enrollment = CourseEnrollment.get_enrollment(user, course_key)
    current_cohort = get_cohort(user, course_key, assign=False)
    verified_cohort = get_cohort_by_name(course_key, VERIFIED_COHORT)

    # Should we instead call is_verified_mode? That would return true for PROFESSIONAL also, but they
    # can't coexist in the same course.
    if enrollment.mode == CourseMode.VERIFIED and current_cohort.id != verified_cohort.id:
        print("Add user to the verified cohort")
        LOGGER.info("Adding user '%s' to the verified cohort for course '%s'", user.username, course_id)
        add_user_to_cohort(verified_cohort, user.username)
    elif enrollment != CourseMode.VERIFIED and current_cohort.id == verified_cohort.id:
        print("Move user back to the default cohort")
        LOGGER.info("Moving user '%s' to the default cohort for course '%s'", user.username, course_id)
        default_cohort = get_cohort_by_name(course_key, DEFAULT_COHORT_NAME)
        add_user_to_cohort(default_cohort, user.username)
