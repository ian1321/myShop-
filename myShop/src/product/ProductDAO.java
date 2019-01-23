package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
	DBConnectionMgr pool;
	Connection con;
	PreparedStatement ps;
	String sql;
	ResultSet rs;

	public ProductDAO() {
		pool = DBConnectionMgr.getInstance();
	}

	public void insert(ProductDTO dto) throws Exception {
		con = pool.getConnection();
		sql = "insert into myShop values(?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getTitle());
		ps.setString(3, dto.getContent());
		ps.setInt(4, dto.getPrice());
		ps.executeUpdate();

		pool.freeConnection(con, ps);
	}
	
	public void delete(String id) throws Exception {
		con = pool.getConnection();
		sql = "delete from myShop where id = ?";
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.executeUpdate();

		pool.freeConnection(con, ps);
	}
	
	public void update(ProductDTO dto) throws Exception {
		con = pool.getConnection();
		sql = "update myShop set title = ?, content = ?,price = ? where id = ?";
		ps = con.prepareStatement(sql);
		ps.setString(1,dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setInt(3, dto.getPrice());
		ps.setString(4, dto.getId());
		ps.executeUpdate();
		
		pool.freeConnection(con,ps);
	}
	
	public ProductDTO select(String id) throws Exception {
		ProductDTO dto = new ProductDTO();
		con = pool.getConnection();
		sql = "select * from myShop where id = ?";
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		rs = ps.executeQuery();

		if (rs.next()) {
			dto = new ProductDTO();
			dto.setId(rs.getString("id"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setPrice(rs.getInt("price"));
		}
		pool.freeConnection(con,ps,rs);
		return dto;
	}
	
	
	public ArrayList<ProductDTO> selectAll() throws Exception {
		ArrayList<ProductDTO> list = new ArrayList<>();
		ProductDTO dto;
		con = pool.getConnection();
		sql = "select * from myShop";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();

		while (rs.next()) {
			dto = new ProductDTO();
			dto.setId(rs.getString("id"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setPrice(rs.getInt("price"));
			list.add(dto);
		}
		pool.freeConnection(con,ps,rs);
		return list;
	}

}
