
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class Conexion{
	
	static Connection contacto = null;

	public static Connection getConexion(){

		//Url de conexion
		String url= "";
		
		//Control de conexion sql con java.
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		}catch (ClassNotFoundException e){
			JOptionPane.showMessageDialog(null,"Error. No se estableció conexión. Falló el Driver. "+e.getMessage(),"Fallo Conexion",JOptionPane.ERROR_MESSAGE);
		}

		//Control del conexion usuario.
		try{
			contacto = DriverManager.getConnection(url,"sa","123");
		}catch(SQLException e){
			JOptionPane.showMessageDialog(null,"Error. No se puedo conectal el usuario con la base de datos. "+e.getMessage(),"Fallo Conexion",JOptionPane.ERROR_MESSAGE);
		}
		
		return contacto;
	}

	//Metodo crea consulta(select) a la base de datos.
	public static  ResultSet consultaSelect(String consulta){
		Connection con = getConexion();

		Statement declara;

		try{
			declara = createStatement();
			ResultSet respuesta = declara.executeQuery(consulta);
			return respuesta;
		}catch(SQLException e){
			JOptionPane.showMessageDialog(null,"Error. No se puedo conectal el usuario con la base de datos. "+e.getMessage(),"Error al crear la consulta",JOptionPane.ERROR_MESSAGE);
		}
		return null;

}