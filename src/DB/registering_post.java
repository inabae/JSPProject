package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class registering_post {
	public static void main(String[] args) {
		for (int i = 0; i < 100; i++) {
			int sequence = i;
			String title = "title" + i;
			String content = "content" + i;
			String id = "bia1796";

			try {
				DBManager db = DBManager.getInstance();
				Connection con = db.open();
				String sql = "insert into post values (null, ?, ?, ?)";
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setString(1, title);
				stmt.setString(2, content);
				stmt.setString(3, id);
				int result = stmt.executeUpdate();
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
}