/**
 * @author krishna
 */


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteUser", function(){
		var userId = $(this).data("userid"),
		//alert(userId),
			hitURL = baseURL + "deleteUser",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this user ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { userId : userId } 
			}).done(function(data){
				console.log(data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("User successfully deleted"); }
				else if(data.status = false) { alert("User deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});



jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleterole", function(){
		 var roleId = $(this).data("roleid")
		 //alert(roleId);
		 	hitURL = baseURL + "deleteRole",
			currentRow = $(this);
		
		var confirmation = confirm("Are you sure to delete this user ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { roleId : roleId } 
			}).done(function(data){
				console.log('role',data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("role successfully deleted"); }
				else if(data.status = false) { alert("role deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});




jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteBooking", function(){
		 var bookingId = $(this).data("bookingid")
		 alert(bookingId);
		 	hitURL = baseURL + "deleteBooking",
			currentRow = $(this);
			alert(hitURL);
		var confirmation = confirm("Are you sure to delete this user ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { bookingId : bookingId } ,
			}).done(function(data){
				 console.log('book',data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Booking successfully deleted"); }
				else if(data.status = false) { alert("Booking deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});


jQuery(document).ready(function(){
	
	jQuery(document).on("click", ".deleteTask", function(){
		 var taskID = $(this).data("taskid")
		 alert(taskID);
		 	hitURL = baseURL + "deleteTask",
			currentRow = $(this);
			alert(hitURL);
		var confirmation = confirm("Are you sure to delete this user ?");
		
		if(confirmation)
		{
			jQuery.ajax({
			type : "POST",
			dataType : "json",
			url : hitURL,
			data : { taskID : taskID } ,
			}).done(function(data){
				 console.log('book',data);
				currentRow.parents('tr').remove();
				if(data.status = true) { alert("Task successfully deleted"); }
				else if(data.status = false) { alert("Task deletion failed"); }
				else { alert("Access denied..!"); }
			});
		}
	});
	
	
	jQuery(document).on("click", ".searchList", function(){
		
	});
	
});