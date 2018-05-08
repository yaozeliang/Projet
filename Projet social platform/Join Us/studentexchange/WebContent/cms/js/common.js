var msg = document.getElementById("msg").value;
if (msg != '') {
	$(function() {
		$.messager.show({
			title : "信息提示",
			msg : msg,
			timeout : 5000
		});
	});
}
