<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To-Do App </title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
  <div class="container"> 
   <div class="card">
     <div class="card-body">

        <form action="updateTask" method="post">
        <caption>
         <h2>Edit Task</h2>
        </caption>
         <fieldset class="form-group">
         <label>Task ID</label>
         <input type="number" class="form-control" name="taskId" value="${task.taskId}" required readonly/>
        </fieldset>
        
        <fieldset class="form-group">
         <label>Task Name</label>
         <input type="text" class="form-control" name="taskName" value="${task.taskName}" required />
        </fieldset>
        
        <fieldset class="form-group">
         <label>Description</label>
         <textarea class="form-control" name="description" rows="3" required>${task.description}</textarea>
        </fieldset>
        
        <fieldset class="form-group">
         <label>Status</label>
         <select class="form-control" name="status" required>
           <option value="Pending" ${task.status == 'Pending' ? 'selected' : ''}>Pending</option>
           <option value="In Progress" ${task.status == 'In Progress' ? 'selected' : ''}>In Progress</option>
           <option value="Completed" ${task.status == 'Completed' ? 'selected' : ''}>Completed</option>
         </select>
        </fieldset>
        
        <fieldset class="form-group">
         <label>Due Date</label>
         <input type="date" class="form-control" name="dueDate" value="${task.dueDate}" required />
        </fieldset>
        
        <button type="submit" class="btn btn-success">Update Task</button>
       </form>
     </div>
   </div>
  </div>
</body>
</html>
