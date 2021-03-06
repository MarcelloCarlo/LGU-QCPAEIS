$(document).ready(function () {
    App.init();
    TableManageResponsive.init();
    FormWizardValidation.init();
    FormPlugins.init();

    $('#dateNSingBussDTIReg').datetimepicker({
        format: "DD-MM-YYYY"

    });
    $('#dateNSingBussEstRentStart').datetimepicker({
        format: "DD-MM-YYYY"
    });

    $('#txtApplicantTelNo').mask('000-0000');
    $('#ApplicantRepPhoneNo').mask('0000 000 0000');

    $('#txtApplicantTINNo').mask('000000000000');
	
	$('#applicationFormMtops').on('keyup keypress', function(e) {
		var keyCode = e.keyCode || e.which;
		if (keyCode === 13) {
			e.preventDefault();
			return false;
		}
	});
	
	
	$('#submitMtopsBtn').click(function () {
        swal({
            title: "Are you sure?",
            text: "You will save your current changes",
            type: "warning",
            confirmButtonColor: "#62a3cb",
            confirmButtonText: "Confirm!",
            showCancelButton: true,
            cancelButtonText: 'Cancel'
        }).then(function (result) {
            if(result.value)
        {
            var formApplicationFormMtops = $('#applicationFormMtops')[0];
            var dataApplicationFormMtops = new FormData(formApplicationFormMtops);
            $.ajax({
                type: "POST",
                enctype: "multipart/form-data",
                url: "uploadMtopsApplForm",
                data: dataApplicationFormMtops,
                processData: false,
                contentType: false,
                success: function (response) {
                    swal({
                        type: 'success',
                        title: 'All Done!',
                        html: 'Upload Done! Please Proceed to the Inspection together with your trycycle',
                        confirmButtonText: 'Proceed'
                    }).then(function(result) {
                        if(result.value)
                    {
                        // var refx = "?refNo=" + response;
                        // window.location.replace("BPLSRtSlip.jsp" + refx);
                        location.reload(true);
                    }
                });
                },
                error: function () {
                    swal("error", "Process encountered an error", "error");
                }
            });
        }
    });
        return false;
    });
});

var handleBootstrapWizardsValidation = function () {
	"use strict";
	$("#wizard").bwizard({
		validating: function (e, t) {
			if (t.index == 0) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-1")) {
					return false;
				}
			} else if (t.index == 1) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-2")) {
					return false;
				}
			} else if (t.index == 2) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-3")) {
					return false;
				}
			} else if (t.index == 3) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-4")) {
					return false;
				}
			} else if (t.index == 4) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-5")) {
					return false;
				}
			} else if (t.index == 5) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-6")) {
					return false;
				}
			} else if (t.index == 6) {
				if (false === $('form[name="applicationFormMtops"]').parsley().validate("wizard-st-7")) {
					return false;
				}
			}
		}
	})
};
var FormWizardValidation = function () {
	"use strict";
	return {
		init: function () {
			handleBootstrapWizardsValidation()
		}
	}
}()