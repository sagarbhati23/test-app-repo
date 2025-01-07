package com.user.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Import your Task model and DAO
import com.user.model.Task;
import com.user.dao.TaskDAO;

@WebServlet("/tasks")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private TaskDAO taskDAO = new TaskDAO(); // TaskDAO to handle database operations

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            switch (action != null ? action : "list") {
                case "new":
                    showNewTaskForm(request, response);
                    break;
                case "edit":
                    showEditTaskForm(request, response);
                    break;
                case "delete":
                    deleteTask(request, response);
                    break;
                case "view":
                    viewTaskDetails(request, response);
                    break;
                default:
                    listTasks(request, response);
                    break;
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            switch (action != null ? action : "list") {
                case "insert":
                    insertTask(request, response);
                    break;
                case "update":
                    updateTask(request, response);
                    break;
                default:
                    listTasks(request, response);
                    break;
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void listTasks(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Task> tasks = taskDAO.getAllTasks();
        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("taskList.jsp").forward(request, response);
    }

    private void showNewTaskForm(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("addTask.jsp").forward(request, response);
    }

    private void showEditTaskForm(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Task existingTask = taskDAO.getTaskById(id);
        request.setAttribute("task", existingTask);
        request.getRequestDispatcher("editTask.jsp").forward(request, response);
    }

    private void viewTaskDetails(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Task task = taskDAO.getTaskById(id);
        request.setAttribute("task", task);
        request.getRequestDispatcher("viewTask.jsp").forward(request, response);
    }

    private void insertTask(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        String name = request.getParameter("taskName");
        String description = request.getParameter("description");
        String status = request.getParameter("status");
        String dueDate = request.getParameter("dueDate");

        Task newTask = new Task(name, description, status, dueDate);
        taskDAO.addTask(newTask);
        response.sendRedirect("tasks");
    }

    private void updateTask(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        int id = Integer.parseInt(request.getParameter("taskId"));
        String name = request.getParameter("taskName");
        String description = request.getParameter("description");
        String status = request.getParameter("status");
        String dueDate = request.getParameter("dueDate");

        Task updatedTask = new Task(id, name, description, status, dueDate);
        taskDAO.updateTask(updatedTask);
        response.sendRedirect("tasks");
    }

    private void deleteTask(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        taskDAO.deleteTask(id);
        response.sendRedirect("tasks");
    }
}
