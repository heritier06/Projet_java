package jsp_Projet_pizza_package;

//import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PizzaDAO {

	static List<Pizza> listPizza = new ArrayList<Pizza>();

	static public List<Pizza> getAllPizzas() throws Exception {

		String sql = "SELECT * FROM t_pizza";

		Connection conn = Dbconnect.getConnection();
		

		Statement statement = conn.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {

			int id = resultSet.getInt("id");
			String DesignPizz = resultSet.getString("DesignPizz");
			Float price = resultSet.getFloat("TarifPizz");

			Pizza itemPizza = new Pizza(id, DesignPizz, price);

			listPizza.add(itemPizza);
		}

		resultSet.close();
		statement.close();
		conn.close();

		// itemPizza disconnect();

		return listPizza;
	}

	static public Pizza getPizzaById(int pizzaid) throws Exception {

		Connection conn = Dbconnect.getConnection();

		String query = "select * from t_pizza where id = " + pizzaid;
		Statement stmt = conn.createStatement();

		ResultSet res = stmt.executeQuery(query);
		res.next();
		int id = res.getInt("id");
		String DesignPizz = res.getString("DesignPizz");
		Float price = res.getFloat("TarifPizz");

		Pizza onePizza = new Pizza(id, DesignPizz, price);

		return onePizza;

	}

}
