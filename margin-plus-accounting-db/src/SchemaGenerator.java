import java.io.File;
import java.util.EnumSet;

import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.hibernate.tool.schema.TargetType;

public class SchemaGenerator {

	public static final String SCRIPT_FILE = "export_script.sql";
	
	private static SchemaExport getSchemaExport() {
		SchemaExport export = new SchemaExport();
		File outputFile = new File(SCRIPT_FILE);
		export.setDelimiter(";");
		export.setOutputFile(outputFile.getAbsolutePath());
		export.setHaltOnError(false);
		return export;
	}
	
	private static void dropDatabase(SchemaExport export, Metadata metadata) {
		EnumSet<TargetType> targetTypes = EnumSet.of(TargetType.DATABASE, TargetType.SCRIPT, TargetType.STDOUT);
		export.drop(targetTypes, metadata);
	}
	
	public static void createDatabase(SchemaExport export, Metadata metadata) {
		EnumSet<TargetType> targetTypes = EnumSet.of(TargetType.DATABASE, TargetType.SCRIPT, TargetType.STDOUT);
		SchemaExport.Action action = SchemaExport.Action.CREATE;
		export.execute(targetTypes, action, metadata);
		System.out.println("Export Done!");
	}
	
	public static void main(String[] args) {
		String configFileName = "hibernate.cfg.xml";
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure(configFileName).build();
		Metadata metadata = new MetadataSources(serviceRegistry).getMetadataBuilder().build();
		System.out.println("Dropping Database");
		SchemaExport export = getSchemaExport();
		dropDatabase(export, metadata);
		
		System.out.println("Creating Databases");
		createDatabase(export, metadata);
	}
	
}
