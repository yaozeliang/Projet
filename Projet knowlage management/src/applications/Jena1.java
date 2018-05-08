package applications;

import tools.JenaEngine;

import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.rdf.model.NodeIterator;
import com.hp.hpl.jena.rdf.model.Property;

public class Jena1 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String NS = "";
		Model model = JenaEngine.readModel("data/movie.owl");
		
			if (model != null) {
			NS = model.getNsPrefixURI("");
			//Property p = model.getProperty(NS + "Person");
			NodeIterator iter = model.listObjects();
			//NodeIterator iter2 = model.listObjectsOfProperty(p);
			while (iter.hasNext()) {
				System.out.println(" " + iter.next().toString());
			}
			
			//Model owlInferencedModel = JenaEngine.readInferencedModelFromRuleFile(model, "data/owlrules.txt");
			// apply our rules on the owlInferencedModel
			//Model inferedModel = JenaEngine.readInferencedModelFromRuleFile(owlInferencedModel, "data/rules.txt");
			// query on the model after inference
			//System.out.println(JenaEngine.executeQueryFile(inferedModel, "data/query.txt"));
			//System.out.println(JenaEngine.getValueOfDataTypeProperty(inferedModel, NS, "Rob", "age"));
			//System.out.println(JenaEngine.getValueOfObjectProperty(inferedModel, NS, "Rob", "isMarriedWith"));
		} else {
			System.out.println("Error when reading model from ontology");
		}

	}

}
