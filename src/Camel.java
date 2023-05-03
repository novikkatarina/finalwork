import java.util.ArrayList;
import java.util.List;

public class Camel extends PackAnimal{
    ArrayList<String> CamelCommands;
    public Camel (String name) {
        super(name);
        this.CamelCommands = new ArrayList<>();
        CamelCommands.add("Sit");
        CamelCommands.add("Stay");
        CamelCommands.add("Voice");
        CamelCommands.add("Come here");
    }
    @Override
    public ArrayList<String> getCommands(){
        return CamelCommands;
    }

    @Override
    public List<String> addCommands(String command) {
        CamelCommands.add(command);
        return CamelCommands;
    }
}
