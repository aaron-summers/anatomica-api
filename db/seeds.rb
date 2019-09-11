# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Category.destroy_all
# Question.destroy_all

Category.create([
    {serial: SecureRandom.hex(16).to_s, system: "General"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Skeletal"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Muscular"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Nervous"}, 
    {serial: SecureRandom.hex(16).to_s, system: "Endocrine"},
    {serial: SecureRandom.hex(16).to_s, system: "Cardiovascular"}
])

Question.create([
    #general
    {content: "What is the study of the body's structure and how its components are assembled called?", category_id: 1, answer: "Anatomy", altAnswers: ["Physiology", "Pathophysiology", "Kinesiology", "Morphology"]},
    {content: "The brain is a part of which bodily system?", category_id: 1, answer: "Nervous System", altAnswers: ["Endocrine System", "Cardiovascular System", "Respiratory System", "Skeletal System"]},
    {content: "How many nucleotides in the DNA?", category_id: 1, answer: "Four", altAnswers: ["Seven", "Eight", "Five", "Three"]},
    {content: "Who discovered Penicillin?", category_id: 1, answer: "Alexander Fleming", altAnswers: ["Jonas Salk", "Edward Jenner", "Michiaki Takahashi", "Thomas Weller"]},
    {content: "Which nucleotide does Adenine bond to in DNA?", category_id: 1, answer: "Thymine", altAnswers: ["Uracil", "Guanine", "Cytosine"]},
    {content: "Which nucleotide does Thymine bond to in DNA?", category_id: 1, answer: "Adenine", altAnswers:  ["Uracil", "Guanine", "Cytosine"]},
    {content: "Which nucleotide does Cytosine bond to in DNA?", category_id: 1, answer: "Guanine", altAnswers: ["Uracil", "Adenine", "Thymine"]},
    {content: "Which nucleotide does Guanine bond to in DNA?", category_id: 1, answer: "Cytosine", altAnswers: ["Uracil", "Adenine", "Thymine"]},
    {content: "Which nucleotide is specific to RNA alone?", category_id: 1, answer: "Uracil", altAnswers: ["Cytosine", "Adenine", "Guanine", "Thymine"]},
    {content: "Which two bases are Purines?", category_id: 1, answer: "Adenine and Guanine", altAnswers:  ["Cytosine and Thymine", "Adenine and Uracil", "Guanine and Cytosine", "Adenine and Thymine"]},
    {content: "What channel is opened along the synaptic cleft during synaptic transmission?", category_id: 1, answer: "Calcium", altAnswers: ["Potassium", "Sodium", "Hydrogen", "Magnesium"]},
    {content: "Movement of cell against the concentration gradient is called?", category_id: 1, answer: "Active transport", altAnswers: ["Osmosis", "Passive diffusion", "Facilitated Diffusion", "Filtration"]},
    {content: "Process of identical cell division can take place by?", category_id: 1, answer: "Mitosis", altAnswers:  ["Heterosis", "Fusion", "Meiosis", "None of these"]},
    {content: "Prokaryotic cells lack what compared to eukaryotic cells?", category_id: 1, answer: "All of these", altAnswers: ["Nucleolus", "Nuclear membrane", "Membrane-bound organelles", "Structural complexity"]},
    {content: "The placenta is the structure formed by?", category_id: 1, answer: "The union of foetal and uterine tissue", altAnswers: ["Only the fetal tissue", "Only the uterine tissue", "Fusion of germ layers", "Structural complexity"]},
    {content: "Which of the following is a macromolecule?", category_id: 1, answer: "All of them", altAnswers: ["Lipid", "Carbohydrate", "Protein", "Nucleic acids"]},
    {content: "Which two vitamins are also water soluble?", category_id: 1, answer: "B and D", altAnswers: ["B and C", "E and K", "A and D", "C and E"]},
    {content: "Which two vitamins can your body make?", category_id: 1, answer: "D and K", altAnswers: ["B and C", "E and K", "A and D", "C and E"]},
    {content: "What is part of the Peripheral Nervous System (PNS)?", category_id: 1, answer: "All of them", altAnswers: ["Peripheral nerves", "Autonomic nervous system", "Enteric nervous system"]},
    {content: "Which of these mutation types occurs without a subsequent change in the amino acid or the function of the overall protein?", category_id: 1, answer: "Silent Mutation", altAnswers: ["Missense mutation", "Nonsense mutation", "Frameshift Mutations"]},
    {content: "Which of these is classified as a point mutation?", category_id: 1, answer: "All of them", altAnswers: ["Missense mutation", "Nonsense mutation", "Frameshift Mutations", "Silent Mutation"]},
    {content: "Which of these is a type of spindle fibre?", category_id: 1, answer: "All of them", altAnswers: ["Aster", "Kinetochore", "Interpolar", "None of these"]},
    {content: "Which stage in the cell cycle includes G1, S1 and G2?", category_id: 1, answer: "Interphase", altAnswers: ["Metaphase", "Anaphase", "Telophase", "Cytokinesis"]},
    {content: "Which is the correct order of mitosis?", category_id: 1, answer: "Interphase → prophase → pro-metaphase → metaphase → anaphase → telophase → cytokinesis", altAnswers: ["Prophase → Interphase → pro-metaphase → metaphase → anaphase → telophase → cytokinesis", "Interphase → prophase → pro-metaphase → metaphase → anaphase → cytokinesis →  telophase", "Interphase → prophase → metaphase → pro-metaphase → anaphase →  telophase → cytokinesis", "None of these"]},
    {content: "Which do exocrine glands not secrete?", category_id: 1, answer: "Hormones", altAnswers: ["Saliva", "Sweat", "Breastmilk", "Enzymes", "All of these"]}

    #cardiology
])
