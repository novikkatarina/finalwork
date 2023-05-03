import java.util.ArrayList;
import java.util.List;

public class Cat extends Pet {
    ArrayList<String> CatCommands;
    public Cat (String name) {
        super(name);
        this.CatCommands = new ArrayList<>();
        CatCommands.add("Sit");
        CatCommands.add("Stop");
        CatCommands.add("Come here");
    }
    @Override
    public ArrayList<String> getCommands(){
        return CatCommands;
    }

    @Override
    public List<String> addCommands(String command) {
        CatCommands.add(command);
        return CatCommands;
    }

}
