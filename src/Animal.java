import java.util.ArrayList;
import java.util.List;

public interface Animal {

    List<String> addCommands(String command);

    List<String> getCommands();

    String getName();

}
