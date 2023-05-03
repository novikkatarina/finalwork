import java.util.ArrayList;
import java.util.List;

public class Dog extends Pet {
    ArrayList<String> DogCommands;

    public Dog(String name) {
        super(name);
        this.DogCommands = new ArrayList<>();
        DogCommands.add("Sit");
        DogCommands.add("Stay");
        DogCommands.add("Voice");
        DogCommands.add("Come here");
    }

    @Override
    public ArrayList<String> getCommands() {
        return DogCommands;
    }

    @Override
    public List<String> addCommands(String command) {
        DogCommands.add(command);
        return DogCommands;
    }
}
