using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
// Jannat Thukral 8842822
// Samhitha Manthramurthy 8830136
// Shaveta sharma 8835866
// Akshit gupta 8856092
public class DatabaseHandler
{
    string connectionString = ConfigurationManager.ConnectionStrings["dbString"].ConnectionString;
    readonly SqlConnection sqlConnection = null;
    /// <summary>
    ///  Class constructor
    /// </summary>
    public DatabaseHandler()
    {
        sqlConnection = new SqlConnection(connectionString);
    }
    /// <summary>
    /// login function
    /// </summary>
    /// <param name="email"></param>
    /// <param name="password"></param>
    /// <returns></returns>
    public SqlDataReader Login(string email,string password)
    {
        // connection check
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        // login functionality
        SqlCommand sqlCommand = new SqlCommand("select Name,Email from Users where Email=@email and Password=@password", sqlConnection);
        sqlCommand.Parameters.AddWithValue("@email", email);
        sqlCommand.Parameters.AddWithValue("@password", password);
        SqlDataReader reader = sqlCommand.ExecuteReader();
        return reader;
    }
    /// <summary>
    /// Register function
    /// </summary>
    /// <param name="email"></param>
    /// <param name="password"></param>
    /// <param name="name"></param>
    /// <returns></returns>
    public int Register(string email, string password,string name)
    {
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        SqlCommand sqlCommand = new SqlCommand("insert into users (name,email,password) values(@name,@email,@password)", sqlConnection);
        sqlCommand.Parameters.AddWithValue("@name", name);
        sqlCommand.Parameters.AddWithValue("@email", email);
        sqlCommand.Parameters.AddWithValue("@password", password);
        return sqlCommand.ExecuteNonQuery();
    }
    /// <summary>
    /// Insert product from admin panel
    /// </summary>
    /// <param name="name"></param>
    /// <param name="description"></param>
    /// <param name="image"></param>
    /// <param name="price"></param>
    /// <param name="category"></param>
    /// <returns></returns>
    public int InsertProduct(string name, string description, string image,decimal price,int category)
    {
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        SqlCommand sqlCommand = new SqlCommand("insert into products (name,description,image,price,categoryId) values(@name,@description,@image,@price,@categoryId)", sqlConnection);
        sqlCommand.Parameters.AddWithValue("@name", name);
        sqlCommand.Parameters.AddWithValue("@description", description);
        sqlCommand.Parameters.AddWithValue("@image", image);
        sqlCommand.Parameters.AddWithValue("@price", price);
        sqlCommand.Parameters.AddWithValue("@categoryId", category);
        return sqlCommand.ExecuteNonQuery();
    }
    /// <summary>
    /// Get top 8 products in index page
    /// </summary>
    /// <returns></returns>
    public SqlDataReader GetTop8Products()
    {
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        SqlCommand sqlCommand = new SqlCommand("select top 8 * from Products", sqlConnection);
        SqlDataReader reader = sqlCommand.ExecuteReader();
        return reader;
    }
    /// <summary>
    /// Get all products by category in products page
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public SqlDataReader GetProducts(string category)
    {
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        
        if (category!=null && category != string.Empty)
        {
            string query = "select * from Products where categoryId=@category";
            SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@category", category);
            return sqlCommand.ExecuteReader();
        }
        else
        {
            string query = "select * from Products";
            SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
            return sqlCommand.ExecuteReader();
        }
    }
    /// <summary>
    /// Get product by Id
    /// </summary>
    /// <param name="productId"></param>
    /// <returns></returns>
    public SqlDataReader GetProduct(string productId)
    {
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        string query = "select products.Id,name,description,category,price,image from Products,Category where products.categoryId= category.Id and products.Id=@productId";
        SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
        sqlCommand.Parameters.AddWithValue("@productId", productId);
        return sqlCommand.ExecuteReader();
    }
    /// <summary>
    /// Order placed to store order in orders table
    /// </summary>
    /// <param name="userId"></param>
    /// <param name="productId"></param>
    /// <param name="quantity"></param>
    /// <param name="total"></param>
    /// <returns></returns>
    public int OrderPlaced(string userId, string productId, string quantity,string total)
    {
        if (sqlConnection.State == System.Data.ConnectionState.Open)
        {
            sqlConnection.Close();
        }
        sqlConnection.Open();
        SqlCommand sqlCommand = new SqlCommand("insert into orders (userId,productId,quantity,total) values(@userId,@productId,@quantity,@total)", sqlConnection);
        sqlCommand.Parameters.AddWithValue("@userId", userId);
        sqlCommand.Parameters.AddWithValue("@productId", productId);
        sqlCommand.Parameters.AddWithValue("@quantity", quantity);
        sqlCommand.Parameters.AddWithValue("@total", total);
        return sqlCommand.ExecuteNonQuery();
    }
}