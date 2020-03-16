using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace Database
{
    public class Link
    {
        //Conn Instance Object of SQl Connection Class
        SqlConnection sqlCon;
        //String ConnectionString for Making the Connection between the Class and Database
        String conStr = "Data Source=LAPTOP-FKPBSUHI;Initial Catalog=CarRental;Integrated Security=True";
        //Cmd Instance Object to Create the Relation between  the Commad to execute the sql Command 
        SqlCommand sqlcmd;
        // DReader is instance to read the data from the database and pass to the Class
        SqlDataReader DReader;




        // this method is used to search the record from the data base and then pass the whole record to the query using where clause of the sql
        public DataTable checkLogin(String qry)
        {
            DataTable tbl = new DataTable();


            sqlCon = new SqlConnection(conStr);

            sqlCon.Open();
            sqlcmd = new SqlCommand(qry, sqlCon);

            DReader = sqlcmd.ExecuteReader();

            tbl.Load(DReader);

            sqlCon.Close();

            return tbl;
        }

        // insert the record of the contact page to the admin 
        public void InsertQuery(String query)
        {
            //pass the connection  string 
            sqlCon = new SqlConnection(conStr);
            //open the connnection 
            sqlCon.Open();
            //pass the command 
            sqlcmd = new SqlCommand(query, sqlCon);
            ///run the command 
            sqlcmd.ExecuteNonQuery();
            //close the connection 
            sqlCon.Close();
        }





    }
}
