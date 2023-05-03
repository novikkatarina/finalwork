import java.util.ArrayList;
import java.util.List;

public class Hamster extends Pet {
    ArrayList<String> HamstersCommands;

    public Hamster(String name) {
        super(name);
        this.HamstersCommands = new ArrayList<String>();
        HamstersCommands.add("Food");
        HamstersCommands.add("Come here");
    }

    @Override
    public ArrayList<String> getCommands() {
        return HamstersCommands;
    }

    @Override
    public List<String> addCommands(String command) {
        HamstersCommands.add(command);
        return HamstersCommands;
    }


}
