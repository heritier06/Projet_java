package jsp_Projet_bike_package;

public class Bike implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    private Integer bikeId;
    private String modelName;
    private Float price;

    public Bike() {
        // Constructeur par défaut
    }

    public Bike(Integer bikeId, String modelName, Float price) {
        super();
        this.bikeId = bikeId;
        this.modelName = modelName;
        this.price = price;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public Integer getBikeId() {
        return bikeId;
    }

    public void setBikeId(Integer bikeId) {
        this.bikeId = bikeId;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }
}
