package entidad;

public class productoDTO {
	
	int cod_producto;
	String nombre_producto;
	int nitproveedor;
	double precio_compra;
	double ivacompra;
	double precio_venta;
	/**
	 * @param cod_producto
	 * @param nombre_producto
	 * @param nitproveedor
	 * @param precio_compra
	 * @param ivacompra
	 * @param precio_venta
	 */
	public productoDTO(int cod_producto, String nombre_producto, int nitproveedor, double precio_compra,
			double ivacompra, double precio_venta) {
		super();
		this.cod_producto = cod_producto;
		this.nombre_producto = nombre_producto;
		this.nitproveedor = nitproveedor;
		this.precio_compra = precio_compra;
		this.ivacompra = ivacompra;
		this.precio_venta = precio_venta;
	}
	public productoDTO(int cod_producto) {
		this.cod_producto = cod_producto;
		
}
	
	/**
	 * @return the cod_producto
	 */
	public int getCod_producto() {
		return cod_producto;
	}
	/**
	 * @param cod_producto the cod_producto to set
	 */
	public void setCod_producto(int cod_producto) {
		this.cod_producto = cod_producto;
	}
	/**
	 * @return the nombre_producto
	 */
	public String getNombre_producto() {
		return nombre_producto;
	}
	/**
	 * @param nombre_producto the nombre_producto to set
	 */
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	/**
	 * @return the nitproveedor
	 */
	public int getNitproveedor() {
		return nitproveedor;
	}
	/**
	 * @param nitproveedor the nitproveedor to set
	 */
	public void setNitproveedor(int nitproveedor) {
		this.nitproveedor = nitproveedor;
	}
	/**
	 * @return the precio_compra
	 */
	public double getPrecio_compra() {
		return precio_compra;
	}
	/**
	 * @param precio_compra the precio_compra to set
	 */
	public void setPrecio_compra(double precio_compra) {
		this.precio_compra = precio_compra;
	}
	/**
	 * @return the ivacompra
	 */
	public double getIvacompra() {
		return ivacompra;
	}
	/**
	 * @param ivacompra the ivacompra to set
	 */
	public void setIvacompra(double ivacompra) {
		this.ivacompra = ivacompra;
	}
	/**
	 * @return the precio_venta
	 */
	public double getPrecio_venta() {
		return precio_venta;
	}
	/**
	 * @param precio_venta the precio_venta to set
	 */
	public void setPrecio_venta(double precio_venta) {
		this.precio_venta = precio_venta;
	}
	
}
