package jsp_Projet_bike_package;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BikeDAO {

    public static List<Bike> getAllBikes() throws Exception {
        List<Bike> listBikes = new ArrayList<>();
        String sql = "SELECT * FROM t_bike";

        try (Connection conn = Dbconnect.getConnection();
             PreparedStatement statement = conn.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String modelName = resultSet.getString("modelName");
                Float price = resultSet.getFloat("price");

                Bike bike = new Bike(id, modelName, price);
                listBikes.add(bike);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

        return listBikes;
    }

    public static Bike getBikeById(int bikeId) throws Exception {
        Bike bike = null;
        String query = "SELECT * FROM t_bike WHERE id = ?";

        try (Connection conn = Dbconnect.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, bikeId);
            try (ResultSet resultSet = stmt.executeQuery()) {
                if (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String modelName = resultSet.getString("modelName");
                    Float price = resultSet.getFloat("price");

                    bike = new Bike(id, modelName, price);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

        return bike;
    }
}
