package applications;

import java.io.IOException;
import java.io.OutputStream;

import tools.JenaEngine;

import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecution;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.query.ResultSetFormatter;
import com.hp.hpl.jena.rdf.model.Model;

public class Jena4 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String NS = "";
		Model model = JenaEngine.readModel("data/movie.owl");
		if (model != null) {
			NS = model.getNsPrefixURI("");

			System.out.println(JenaEngine.executeQueryFile(model, "data/jena4.txt"));

		} else {
			System.out.println("Error when reading model from ontology");
		}

	}

}
