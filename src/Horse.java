import java.util.ArrayList;
import java.util.List;

public class Horse extends PackAnimal {
    ArrayList<String> HorseCommands;

    public Horse(String name) {
        super(name);
        this.HorseCommands = new ArrayList<String>();
        HorseCommands.add("Sit");
        HorseCommands.add("Stay");
        HorseCommands.add("Voice");
        HorseCommands.add("Come here");
    }

    @Override
    public ArrayList<String> getCommands() {
        return HorseCommands;
    }

    @Override
    public List<String> addCommands(String command) {
        HorseCommands.add(command);
        return HorseCommands;
    }
}
