package applications;

import tools.JenaEngine;

import com.hp.hpl.jena.rdf.model.Model;

public class Jena5 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String NS = "";
		// lire le model a partir d'une ontologie
		Model model = JenaEngine.readModel("data/movie.owl");
		if (model != null) {
			// lire le Namespace de l'ontologie
			NS = model.getNsPrefixURI("");
			// apply owl rules on the model
			Model owlInferencedModel = JenaEngine
					.readInferencedModelFromRuleFile(model, "data/owlrules.txt");
			// apply our rules on the owlInferencedModel
			Model inferedModel = JenaEngine.readInferencedModelFromRuleFile(owlInferencedModel, "data/rules5.txt");
			// query on the model after inference
			System.out.println(JenaEngine.executeQueryFile(inferedModel, "data/jena5.txt"));
		}

	}
}
