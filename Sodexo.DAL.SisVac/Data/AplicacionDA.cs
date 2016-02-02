using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sodexo.BE.SisVac;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Sodexo.DAL.SisVac.Data
{
    public class AplicacionDA
    {
        public List<AplicacionBE> ListaAplicacion() 
        {
            SqlConnection con = null;
            SqlDataReader dr = null;
            try
            {

                SqlCommand cmd = new SqlCommand();
                string scon = ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString;
                con = new SqlConnection(scon);
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "sdv_sel_aplicacion";
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("an_codcanal", sol.COD_CANAL);

                dr = cmd.ExecuteReader();
                var lista = new List<AplicacionBE>();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        AplicacionBE app = new AplicacionBE();
                        app.id_aplicacion = int.Parse(dr.GetValue(dr.GetOrdinal("id_aplicacion")).ToString());
                        app.nombre_sistema = dr.GetValue(dr.GetOrdinal("nombre_sistema")).ToString();
                        app.nombre_corto = dr.GetValue(dr.GetOrdinal("nombre_corto")).ToString();
                        app.estado = int.Parse(dr.GetValue(dr.GetOrdinal("estado")).ToString());

                        lista.Add(app);
                    }
                    dr.Close();
                    cmd.Dispose();
                }
                con.Close();
                return lista;
            }
            catch (SqlException ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            catch (Exception ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        public int RegistrarAplicacion(AplicacionBE app)
        {
            SqlConnection con = null;

            string scon = ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString;
            con = new SqlConnection(scon);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sdv_reg_aplicacion";
            cmd.Connection = con;
            
            try
            {
                cmd.Parameters.AddWithValue("@nombre_sistema", app.nombre_sistema);
                cmd.Parameters.AddWithValue("@nombre_corto", app.nombre_corto);
                cmd.Parameters.AddWithValue("@estado", app.estado);
                cmd.Parameters.AddWithValue("@usuario_reg", app.usuario_reg);

                int result = cmd.ExecuteNonQuery();
                return result;

            }
            catch (SqlException ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            catch (Exception ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public int EliminarAplicacion(int app)
        {
            SqlConnection con = null;

            string scon = ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString;
            con = new SqlConnection(scon);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sdv_del_aplicacion";
            try
            {
                cmd.Parameters.AddWithValue("@id_aplicacion", app);

                int result = cmd.ExecuteNonQuery();
                return result;
            }
            catch (SqlException ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            catch (Exception ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public int ActualizarAplicacion(AplicacionBE app)
        {
            SqlConnection con = null;

            string scon = ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString;
            con = new SqlConnection(scon);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sdv_upd_aplicacion";
            cmd.Connection = con;

            try
            {
                cmd.Parameters.AddWithValue("@id_aplicacion", app.id_aplicacion);
                cmd.Parameters.AddWithValue("@nombre_sistema", app.nombre_sistema);
                cmd.Parameters.AddWithValue("@nombre_corto", app.nombre_corto);
                cmd.Parameters.AddWithValue("@estado", app.estado);
                cmd.Parameters.AddWithValue("@usuario_reg", app.usuario_reg);

                int result = cmd.ExecuteNonQuery();
                return result;

            }
            catch (SqlException ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            catch (Exception ex)
            {
                //General.LogErrorBD(ex);
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
