using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace TrackMobile
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLocation();
            }
        }

        protected void btnUpdateLocation_Click(object sender, EventArgs e)
        {
            UpdateLocation();
        }

        private void LoadLocation()
        {
            string connectionString = "Data Source = AKI2404; Initial Catalog = MobileTrackingDB; Integrated Security = True;";
            string query = "SELECT TOP 1 Latitude, Longitude FROM LocationData ORDER BY DateUpdated DESC";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                {
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (dataTable.Rows.Count > 0)
                    {
                        DataRow row = dataTable.Rows[0];
                        double latitude = Convert.ToDouble(row["Latitude"]);
                        double longitude = Convert.ToDouble(row["Longitude"]);

                        txtLocation.Text = $"Latitude: {latitude}, Longitude: {longitude}";
                    }
                    else
                    {
                        txtLocation.Text = "No location data available.";
                    }
                }
            }
        }

        private void UpdateLocation()
        {
            string connectionString = "Data Source=AKI2404;Initial Catalog=MobileTrackingDB;Integrated Security=True;";
            string insertQuery = "INSERT INTO LocationData (Latitude, Longitude, DateUpdated) VALUES (13.0013, 80.2432, GETDATE())"; 

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    command.ExecuteNonQuery();
                }
            }

            LoadLocation();
        }
    }
}
