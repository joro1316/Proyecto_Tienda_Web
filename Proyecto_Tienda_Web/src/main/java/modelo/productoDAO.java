package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import conexion.Conexion;
import entidad.productoDTO;

public class productoDAO {
	
	Conexion con=new Conexion();
	Connection cnn =Conexion.getConexion();
	PreparedStatement ps;
	ResultSet rs;
	productoDTO pro;

	public String insertarproducto(productoDTO pr) {
		int x;
		String dat="";
		try {
			pro=consultarproducto(pr);
			if(pro==null) {
				ps=cnn.prepareStatement("INSERT INTO producto VALUES(?,?,?,?,?,?)");
				ps.setInt(1, pr.getCod_producto());
				ps.setString(2, pr.getNombre_producto());
				ps.setInt(3, pr.getNitproveedor());
				ps.setDouble(4, pr.getPrecio_compra());
				ps.setDouble(5, pr.getIvacompra());
				ps.setDouble(6, pr.getPrecio_venta());
				
				x=ps.executeUpdate();
					if(x>0) {
						dat="r";
					}
			}	
			else {
				dat="nr";
			}
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al insertar"+e);
			
		}
		
		
		return dat;
	}

	public  productoDTO consultarproducto(productoDTO pr) {
		
	try {
		ps=cnn.prepareStatement("SELECT * FROM producto WHERE cod_producto=?");
		ps.setInt(1, pr.getCod_producto());
		rs=ps.executeQuery();
		if(rs.next()) {
		   pro=new productoDTO(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getDouble(4),rs.getDouble(5),rs.getDouble(6));
		  }
		
		
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}	
		
	return pro;
	}



	public int eliminar(productoDTO pr) {
		
		int x=0;
	  try {
		ps=cnn.prepareStatement("DELETE FROM usuario WHERE cod_producto=? ");
		ps.setInt(1, pr.getCod_producto());
		x=ps.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	 return x; 	
	}
		

	public boolean actualizar(productoDTO pr) {
		boolean dat=false;
		//JOptionPane.showMessageDialog(null, "dao"+us.getDocumento());
		//JOptionPane.showMessageDialog(null, us.getNomusuario());
		int x;
		try {
			ps=cnn.prepareStatement("UPDATE usuario SET nombre_producto=?,nitproveedor=?,precio_compra=?,ivacompra=?,precio_producto WHERE cod_producto=?");
		    ps.setString(1, pr.getNombre_producto());
		    ps.setInt(2, pr.getNitproveedor());
		    ps.setDouble(3, pr.getPrecio_compra());
		    ps.setDouble(4, pr.getIvacompra());
		    ps.setDouble(5, pr.getPrecio_venta());
		    ps.setInt(6, pr.getCod_producto());
		    x=ps.executeUpdate();
		    if(x>0) {
		    	dat=true;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			JOptionPane.showMessageDialog(null, "ERROR AL ACTUALIZAR"+e);
		}
		
		return dat;	
	}
	public ArrayList<productoDTO> consultar(){
		ArrayList<productoDTO> lista=new  ArrayList<productoDTO>();
		try {
			ps=cnn.prepareStatement("SELECT * FROM producto");
			rs=ps.executeQuery();
			while(rs.next()) {
				pro=new productoDTO(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getDouble(4),rs.getDouble(5),rs.getDouble(6));
			   lista.add(pro);
			   
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//JOptionPane.showMessageDialog(null, "Consulta exitosa"+e);
		}
		return lista;
	}
}



