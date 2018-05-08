package applications;

import tools.JenaEngine;

import com.hp.hpl.jena.rdf.model.Model;

public class Jena2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String NS = "";
		Model model = JenaEngine.readModel("data/movie.owl");
		if (model != null) {
			NS = model.getNsPrefixURI("");
			System.out.println(JenaEngine.executeQueryFile(model, "data/jena2.txt"));
		} else {
			System.out.println("Error when reading model from ontology");
		}
	}

}
