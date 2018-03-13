using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Unit9_Chiles.App_Code
{
     [DataObject(true)]
    public static class ProductDB
    {
         [DataObjectMethod(DataObjectMethodType.Select)]
        public static IEnumerable GetProducts()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            string sql = "SELECT ProductID, Name, OnHand " + "FROM Products";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            return dr;
        }
        
         [DataObjectMethod(DataObjectMethodType.Update)]
        public static int UpdateProduct(Product original_Product, Product product)
        {
            string sql = "Update Products "
                + "SET Name = @Name, "
                + "OnHand = @OnHand "
                + "WHERE ProductID = @original_ProductID "
                + "AND Name = @original_Name "
                + "AND OnHand = @original_OnHand";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("Name", product.Name);
                    cmd.Parameters.AddWithValue("OnHand", product.OnHand);
                    cmd.Parameters.AddWithValue("original_ProductID", original_Product.ProductID);
                    cmd.Parameters.AddWithValue("original_Name", original_Product.Name);
                    cmd.Parameters.AddWithValue("original_OnHand", original_Product.OnHand);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString;
        }
    }
}