import java.util.ArrayList;
import java.util.List;

public class Donkey extends PackAnimal {
    ArrayList<String> DonkeyCommands;

    public Donkey(String name) {
        super(name);
        this.DonkeyCommands = new ArrayList<>();
        DonkeyCommands.add("Sit");
        DonkeyCommands.add("Stay");
        DonkeyCommands.add("Voice");
        DonkeyCommands.add("Come here");
    }

    @Override
    public ArrayList<String> getCommands() {
        return DonkeyCommands;
    }


    @Override
    public List<String> addCommands(String command) {
        DonkeyCommands.add(command);
        return DonkeyCommands;
    }
}
