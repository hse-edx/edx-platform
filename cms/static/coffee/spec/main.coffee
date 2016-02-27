requirejs.config({
    paths: {
        "gettext": "xmodule_js/common_static/js/test/i18n",
        "mustache": "xmodule_js/common_static/js/vendor/mustache",
        "codemirror": "xmodule_js/common_static/js/vendor/CodeMirror/codemirror",
        "jquery": "xmodule_js/common_static/js/vendor/jquery.min",
        "jquery-migrate": "xmodule_js/common_static/js/vendor/jquery-migrate.min",
        "jquery.ui": "xmodule_js/common_static/js/vendor/jquery-ui.min",
        "jquery.form": "xmodule_js/common_static/js/vendor/jquery.form",
        "jquery.markitup": "xmodule_js/common_static/js/vendor/markitup/jquery.markitup",
        "jquery.leanModal": "xmodule_js/common_static/js/vendor/jquery.leanModal",
        "jquery.ajaxQueue": "xmodule_js/common_static/js/vendor/jquery.ajaxQueue",
        "jquery.smoothScroll": "xmodule_js/common_static/js/vendor/jquery.smooth-scroll.min",
        "jquery.scrollTo": "xmodule_js/common_static/js/vendor/jquery.scrollTo.min",
        "jquery.timepicker": "xmodule_js/common_static/js/vendor/timepicker/jquery.timepicker",
        "jquery.cookie": "xmodule_js/common_static/js/vendor/jquery.cookie",
        "jquery.qtip": "xmodule_js/common_static/js/vendor/jquery.qtip.min",
        "jquery.fileupload": "xmodule_js/common_static/js/vendor/jQuery-File-Upload/js/jquery.fileupload",
        "jquery.fileupload-process": "xmodule_js/common_static/js/vendor/jQuery-File-Upload/js/jquery.fileupload-process",
        "jquery.fileupload-validate": "xmodule_js/common_static/js/vendor/jQuery-File-Upload/js/jquery.fileupload-validate",
        "jquery.iframe-transport": "xmodule_js/common_static/js/vendor/jQuery-File-Upload/js/jquery.iframe-transport",
        "jquery.inputnumber": "xmodule_js/common_static/js/vendor/html5-input-polyfills/number-polyfill",
        "jquery.immediateDescendents": "xmodule_js/common_static/coffee/src/jquery.immediateDescendents",
        "jquery.simulate": "xmodule_js/common_static/js/vendor/jquery.simulate",
        "datepair": "xmodule_js/common_static/js/vendor/timepicker/datepair",
        "date": "xmodule_js/common_static/js/vendor/date",
        "moment": "xmodule_js/common_static/js/vendor/moment.min",
        "moment-with-locales": "xmodule_js/common_static/js/vendor/moment-with-locales.min",
        "text": "xmodule_js/common_static/js/vendor/requirejs/text",
        "underscore": "xmodule_js/common_static/js/vendor/underscore-min",
        "underscore.string": "xmodule_js/common_static/js/vendor/underscore.string.min",
        "backbone": "xmodule_js/common_static/js/vendor/backbone-min",
        "backbone.associations": "xmodule_js/common_static/js/vendor/backbone-associations-min",
        "backbone.paginator": "xmodule_js/common_static/js/vendor/backbone.paginator.min",
        "backbone-relational": "xmodule_js/common_static/js/vendor/backbone-relational.min",
        "tinymce": "xmodule_js/common_static/js/vendor/tinymce/js/tinymce/tinymce.full.min",
        "jquery.tinymce": "xmodule_js/common_static/js/vendor/tinymce/js/tinymce/jquery.tinymce",
        "xmodule": "xmodule_js/src/xmodule",
        "xblock/cms.runtime.v1": "coffee/src/xblock/cms.runtime.v1",
        "xblock/core": "xmodule_js/common_static/js/xblock/core",
        "xblock": "xmodule_js/common_static/coffee/src/xblock",
        "utility": "xmodule_js/common_static/js/src/utility",
        "accessibility": "xmodule_js/common_static/js/src/accessibility_tools",
        "sinon": "xmodule_js/common_static/js/vendor/sinon-1.17.0",
        "squire": "xmodule_js/common_static/js/vendor/Squire",
        "jasmine-jquery": "xmodule_js/common_static/js/vendor/jasmine-jquery",
        "jasmine-imagediff": "xmodule_js/common_static/js/vendor/jasmine-imagediff",
        "jasmine-stealth": "xmodule_js/common_static/js/vendor/jasmine-stealth",
        "jasmine.async": "xmodule_js/common_static/js/vendor/jasmine.async",
        "draggabilly": "xmodule_js/common_static/js/vendor/draggabilly.pkgd",
        "domReady": "xmodule_js/common_static/js/vendor/domReady",
        "URI": "xmodule_js/common_static/js/vendor/URI.min",
        "mock-ajax": "xmodule_js/common_static/js/vendor/mock-ajax",

        "mathjax": "//cdn.mathjax.org/mathjax/2.6-latest/MathJax.js?config=TeX-MML-AM_SVG&delayStartupUntil=configured",
        "youtube": "//www.youtube.com/player_api?noext",

        "coffee/src/ajax_prefix": "xmodule_js/common_static/coffee/src/ajax_prefix",
        "js/spec/test_utils": "js/spec/test_utils",
    }
    shim: {
        "gettext": {
            exports: "gettext"
        },
        "date": {
            exports: "Date"
        },
        "jquery-migrate": ['jquery'],
        "jquery.ui": {
            deps: ["jquery"],
            exports: "jQuery.ui"
        },
        "jquery.form": {
            deps: ["jquery"],
            exports: "jQuery.fn.ajaxForm"
        },
        "jquery.markitup": {
            deps: ["jquery"],
            exports: "jQuery.fn.markitup"
        },
        "jquery.leanModal": {
            deps: ["jquery"],
            exports: "jQuery.fn.leanModal"
        },
        "jquery.smoothScroll": {
            deps: ["jquery"],
            exports: "jQuery.fn.smoothScroll"
        },
        "jquery.ajaxQueue": {
            deps: ["jquery"],
            exports: "jQuery.fn.ajaxQueue"
        },
        "jquery.scrollTo": {
            deps: ["jquery"],
            exports: "jQuery.fn.scrollTo"
        },
        "jquery.cookie": {
            deps: ["jquery"],
            exports: "jQuery.fn.cookie"
        },
        "jquery.qtip": {
            deps: ["jquery"],
            exports: "jQuery.fn.qtip"
        },
        "jquery.fileupload": {
            deps: ["jquery.ui", "jquery.iframe-transport"],
            exports: "jQuery.fn.fileupload"
        },
        "jquery.fileupload-process": {
            deps: ["jquery.fileupload"]
        },
        "jquery.fileupload-validate": {
            deps: ["jquery.fileupload"]
        },
        "jquery.inputnumber": {
            deps: ["jquery"],
            exports: "jQuery.fn.inputNumber"
        },
        "jquery.simulate": {
            deps: ["jquery"],
            exports: "jQuery.fn.simulate"
        },
        "jquery.tinymce": {
            deps: ["jquery", "tinymce"],
            exports: "jQuery.fn.tinymce"
        },
        "datepair": {
            deps: ["jquery.ui", "jquery.timepicker"]
        },
        "underscore": {
            exports: "_"
        },
        "backbone": {
            deps: ["underscore", "jquery"],
            exports: "Backbone"
        },
        "backbone.associations": {
            deps: ["backbone"],
            exports: "Backbone.Associations"
        },
        "backbone.paginator": {
            deps: ["backbone"],
            exports: "Backbone.Paginator"
        },
        "backbone-relational": {
            deps: ["backbone"],
        },
        "youtube": {
            exports: "YT"
        },
        "codemirror": {
            exports: "CodeMirror"
        },
        "tinymce": {
            exports: "tinymce"
        },
        "mathjax": {
            exports: "MathJax",
            init: ->
              MathJax.Hub.Config
                tex2jax:
                  inlineMath: [
                    ["\\(","\\)"],
                    ['[mathjaxinline]','[/mathjaxinline]']
                  ]
                  displayMath: [
                    ["\\[","\\]"],
                    ['[mathjax]','[/mathjax]']
                  ]
              MathJax.Hub.Configured()
        },
        "URI": {
            exports: "URI"
        },
        "xmodule": {
            exports: "XModule"
        },
        "sinon": {
            exports: "sinon"
        },
        "jasmine-jquery": {
            deps: ["jasmine"]
        },
        "jasmine-imagediff": {
            deps: ["jasmine"]
        },
        "jasmine-stealth": {
            deps: ["jasmine"]
        },
        "jasmine.async": {
            deps: ["jasmine"],
            exports: "AsyncSpec"
        },
        "xblock/core": {
            exports: "XBlock",
            deps: ["jquery", "jquery.immediateDescendents"]
        },
        "xblock/runtime.v1": {
            exports: "XBlock",
            deps: ["xblock/core"]
        },
        "mock-ajax": {
            deps: ["jasmine", "jquery"]
        }

        "coffee/src/main": {
            deps: ["coffee/src/ajax_prefix"]
        },
        "coffee/src/ajax_prefix": {
            deps: ["jquery"]
        }
    }
});

jasmine.getFixtures().fixturesPath += 'coffee/fixtures'

define([
    "coffee/spec/main_spec",

    "coffee/spec/models/course_spec",
    "coffee/spec/models/metadata_spec",
    "coffee/spec/models/section_spec",
    "coffee/spec/models/settings_course_grader_spec",
    "coffee/spec/models/settings_grading_spec",
    "coffee/spec/models/textbook_spec",
    "coffee/spec/models/upload_spec",

    "coffee/spec/views/course_info_spec",
    "coffee/spec/views/metadata_edit_spec",
    "coffee/spec/views/module_edit_spec",

    "coffee/spec/views/textbook_spec",
    "coffee/spec/views/upload_spec",

    "js/spec/video/transcripts/utils_spec",
    "js/spec/video/transcripts/editor_spec",
    "js/spec/video/transcripts/videolist_spec",
    "js/spec/video/transcripts/message_manager_spec",
    "js/spec/video/transcripts/file_uploader_spec",

    "js/spec/models/component_template_spec",
    "js/spec/models/explicit_url_spec",
    "js/spec/models/xblock_info_spec",
    "js/spec/models/xblock_validation_spec",
    "js/spec/models/license_spec",

    "js/spec/utils/drag_and_drop_spec",
    "js/spec/utils/handle_iframe_binding_spec",
    "js/spec/utils/module_spec",

    "js/spec/views/active_video_upload_list_spec",
    "js/spec/views/previous_video_upload_spec",
    "js/spec/views/previous_video_upload_list_spec",
    "js/spec/views/assets_spec",
    "js/spec/views/baseview_spec",
    "js/spec/views/container_spec",
    "js/spec/views/paged_container_spec",
    "js/spec/views/group_configuration_spec",
    "js/spec/views/unit_outline_spec",
    "js/spec/views/xblock_spec",
    "js/spec/views/xblock_editor_spec",
    "js/spec/views/xblock_string_field_editor_spec",
    "js/spec/views/xblock_validation_spec",
    "js/spec/views/license_spec",
    "js/spec/views/paging_spec",
    "js/spec/views/login_studio_spec",

    "js/spec/views/pages/container_spec",
    "js/spec/views/pages/container_subviews_spec",
    "js/spec/views/pages/group_configurations_spec",
    "js/spec/views/pages/course_outline_spec",
    "js/spec/views/pages/course_rerun_spec",
    "js/spec/views/pages/index_spec",
    "js/spec/views/pages/library_users_spec",

    "js/spec/views/modals/base_modal_spec",
    "js/spec/views/modals/edit_xblock_spec",
    "js/spec/views/modals/validation_error_modal_spec",

    "js/spec/views/settings/main_spec",

    "js/spec/factories/xblock_validation_spec",

    "js/spec/xblock/cms.runtime.v1_spec",

    # Certificates application test suite mappings
    "js/certificates/spec/models/certificate_spec",
    "js/certificates/spec/views/certificate_details_spec",
    "js/certificates/spec/views/certificate_editor_spec",
    "js/certificates/spec/views/certificates_list_spec",
    "js/certificates/spec/views/certificate_preview_spec",

    # these tests are run separately in the cms-squire suite, due to process
    # isolation issues with Squire.js
    # "coffee/spec/views/assets_spec"
    ])
