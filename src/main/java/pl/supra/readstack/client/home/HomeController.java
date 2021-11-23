package pl.supra.readstack.client.home;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.supra.readstack.domain.api.CategoryName;
import pl.supra.readstack.domain.api.CategoryService;
import pl.supra.readstack.domain.api.DiscoveryBasicInfo;
import pl.supra.readstack.domain.api.DiscoveryService;

import java.io.IOException;
import java.util.List;

@WebServlet("")
public class HomeController extends HttpServlet {
    private DiscoveryService discoveryService = new DiscoveryService();
    private CategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<DiscoveryBasicInfo> discoveries = discoveryService.findAll();
        request.setAttribute("discoveries", discoveries);
        List<CategoryName> categories = categoryService.findAllCategoryNames();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request, response);
    }
}
