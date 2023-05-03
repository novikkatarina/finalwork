import java.util.ArrayList;
import java.util.List;

public class PackAnimal implements Animal {
    String name;
    List<String> commands;

    public PackAnimal(String name) {
        this.name = name;
        this.commands = null;
    }

    @Override
    public List<String> addCommands(String command) {
        commands.add(command);
        return commands;
    }

    @Override
    public List<String> getCommands() {
        return commands;
    }

    public String getName() {
        return name;
    }

    ;
}
