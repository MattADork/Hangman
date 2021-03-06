HANGMANPICS = ['''
  +---+
  |   |
      |
      |
      |
      |
=========''', '''
  +---+
  |   |
  O   |
      |
      |
      |
=========''', '''
  +---+
  |   |
  O   |
  |   |
      |
      |
=========''', '''
  +---+
  |   |
  O   |
 /|   |
      |
      |
=========''', '''
  +---+
  |   |
  O   |
 /|\  |
      |
      |
=========''', '''
  +---+
  |   |
  O   |
 /|\  |
 /    |
      |
=========''', '''
  +---+
  |   |
  O   |
 /|\  |
 / \  |
      |
=========''', '''
  +---+
  |   |
  O   |
 /|\  |
 / \  |
------|
=========''']

WORDS = ["abruptly", "absurd", "accept", "accident", "accuse", "across", "activist", "administration", "advertise", "advise", "affect", "afraid", "against", "agency", "aggression", "agriculture", "airplane", "airport", "alcohol", "almost", "already", "although", "always", "ambassador", "ammunition", "amount", "anarchy", "ancestor", "ancient", "animal", "anniversary", "announce", "another", "answer", "apologize", "appeal", "appear", "appoint", "approve", "archeology", "around", "arrest", "arrive", "artillery", "assist", "astronaut", "astronomy", "asylum", "atmosphere", "attach", "attack", "attempt", "attend", "attention", "automobile", "autumn", "available", "avenue", "average", "awkward", "bagpipes", "balance", "balloon", "ballot", "bandwagon", "barrier", "battle", "beauty", "because", "become", "beekeeper", "before", "behavior", "behind", "believe", "belong", "betray", "better", "between", "bikini", "biology", "blind", "blizzard", "boggle", "bookworm", "border", "borrow", "bottle", "bottom", "boxcar", "boxful", "boycott", "breathe", "bridge", "bright", "broadcast", "brother", "buckaroo", "budget", "buffalo", "buffoon", "building", "bullet", "business", "buzzard", "buzzing", "buzzwords", "cabinet", "caliph", "camera", "campaign", "cancel", "cancer", "candidate", "capital", "capture", "career", "careful", "ceasefire", "celebrate", "center", "century", "ceremony", "chairman", "champion", "chance", "change", "charge", "chemicals", "chemistry", "children", "choose", "circle", "citizen", "civilian", "clear", "clergy", "climate", "cloth", "clothes", "coalition", "cobweb", "cockiness", "coffee", "collapse", "collect", "college", "colony", "combine", "command", "comment", "committee", "common", "communicate", "community", "company", "compare", "compete", "complete", "complex", "compromise", "computer", "concern", "condemn", "condition", "conference", "confirm", "conflict", "congratulate", "congress", "connect", "conservative", "consider", "constitution", "contact", "contain", "container", "continent", "continue", "control", "convention", "cooperate", "correct", "corruption", "cotton", "country", "create", "creature", "credit", "criminal", "crisis", "criticize", "croquet", "crush", "culture", "curfew", "current", "custom", "customs", "daiquiri", "damage", "danger", "daughter", "debate", "decide", "declare", "decrease", "defeat", "defend", "deficit", "define", "degree", "delegate", "demand", "democracy", "demonstrate", "denounce", "depend", "deplore", "deploy", "depression", "describe", "desert", "design", "desire", "destroy", "detail", "detain", "develop", "device", "dictator", "different", "difficult", "dinner", "diplomat", "direct", "direction", "dirndl", "disappear", "disarm", "disaster", "disavow", "discover", "discrimination", "discuss", "disease", "dismiss", "dispute", "dissident", "distance", "divide", "dizzying", "doctor", "document", "dollar", "donate", "double", "drown", "duplex", "during", "dwarves", "earthquake", "ecology", "economy", "education", "effect", "effort", "either", "electricity", "embassy", "embezzle", "embryo", "emergency", "emotion", "employ", "energy", "enforce", "engine", "engineer", "enough", "environment", "equipment", "escape", "especially", "espionage", "establish", "estimate", "ethnic", "evaporate", "evidence", "examine", "example", "excellent", "except", "exchange", "excuse", "execute", "exercise", "exodus", "expand", "expect", "experience", "experiment", "expert", "explain", "explode", "explore", "export", "express", "extraordinary", "extreme", "extremist", "factory", "faking", "family", "famous", "father", "favorite", "federal", "female", "fertile", "fierce", "financial", "finish", "fireworks", "fishhook", "fixable", "flapjack", "floor", "flopping", "flower", "fluffiness", "follow", "foreign", "forest", "forget", "forgive", "former", "forward", "foxglove", "frazzled", "freedom", "freeze", "friend", "frighten", "frizzled", "fuchsia", "funeral", "future", "galaxy", "galvanize", "gather", "gazebo", "general", "generation", "genocide", "gentle", "glowworm", "gnarly", "gnostic", "gossip", "govern", "government", "green", "grogginess", "ground", "guarantee", "guerrilla", "guilty", "haphazard", "happen", "harvest", "headquarters", "health", "helicopter", "hijack", "history", "holiday", "honest", "horrible", "hospital", "hostage", "hostile", "however", "hunger", "husband", "hyphen", "icebox", "identify", "ignore", "illegal", "imagine", "immediate", "immigrant", "import", "important", "improve", "incident", "incite", "increase", "independent", "individual", "industry", "infect", "inflation", "influence", "inform", "information", "inject", "injure", "injury", "innocent", "insane", "insect", "inspect", "instead", "instrument", "insult", "intelligence", "intelligent", "intense", "interest", "interfere", "international", "internet", "intervene", "invade", "invent", "invest", "investigate", "invite", "involve", "island", "jackpot", "jaundice", "jawbreaker", "jaywalk", "jazziest", "jewel", "jigsaw", "jiujitsu", "jockey", "jogging", "joking", "jovial", "joyful", "jukebox", "justice", "keyhole", "kidnap", "kilobyte", "kitsch", "kiwifruit", "knapsack", "knowledge", "laboratory", "language", "larynx", "launch", "legislature", "lengths", "letter", "liberal", "lightning", "liquid", "listen", "literature", "little", "lonely", "luxury", "machine", "magazine", "majority", "manufacture", "market", "marquis", "material", "mathematics", "matrix", "matter", "measure", "medicine", "megahertz", "member", "memorial", "memory", "mental", "message", "method", "microscope", "microwave", "middle", "militant", "military", "militia", "mineral", "minister", "minority", "minute", "missile", "missing", "mistake", "mnemonic", "moderate", "modern", "morning", "mother", "motion", "mountain", "movement", "murder", "mystery", "mystify", "naphtha", "narrow", "nation", "native", "natural", "nature", "necessary", "negotiate", "neighbor", "neither", "neutral", "nightclub", "nominate", "normal", "nothing", "nowadays", "nowhere", "nuclear", "number", "numbskull", "object", "observe", "occupy", "offensive", "office", "officer", "official", "operate", "opinion", "oppose", "opposite", "oppress", "organize", "overthrow", "oxidize", "oxygen", "pajama", "parachute", "parade", "pardon", "parent", "parliament", "partner", "passenger", "passport", "patient", "peekaboo", "people", "percent", "perfect", "perform", "period", "permanent", "permit", "person", "persuade", "phlegm", "physical", "physics", "picture", "pizazz", "planet", "plastic", "please", "plenty", "pneumonia", "poison", "police", "policy", "politics", "pollute", "popular", "population", "position", "possess", "possible", "postpone", "poverty", "praise", "predict", "pregnant", "present", "president", "pressure", "prevent", "prison", "private", "probably", "problem", "process", "produce", "profession", "professor", "profit", "program", "progress", "project", "promise", "propaganda", "property", "propose", "protect", "protest", "provide", "psyche", "publication", "publish", "punish", "purchase", "purpose", "puzzling", "quality", "quartz", "question", "quips", "quixotic", "quizzes", "quorum", "radiation", "railroad", "razzmatazz", "realistic", "reason", "reasonable", "receive", "recent", "recession", "recognize", "record", "recover", "reduce", "reform", "refugee", "refuse", "register", "regret", "reject", "relations", "release", "religion", "remain", "remains", "remember", "remove", "repair", "repeat", "report", "represent", "repress", "request", "research", "resign", "resist", "resolution", "resource", "respect", "responsible", "restaurant", "restrain", "restrict", "result", "retire", "revolt", "rhubarb", "rhythm", "rickshaw", "rights", "rocket", "rubber", "sabotage", "sacrifice", "sailor", "satellite", "satisfy", "schnapps", "school", "science", "scratch", "search", "season", "second", "secret", "security", "seeking", "sentence", "separate", "series", "serious", "service", "settle", "several", "severe", "sharp", "shelter", "short", "should", "shrink", "sickness", "signal", "silence", "silver", "similar", "simple", "single", "sister", "situation", "skeleton", "slide", "smoke", "smooth", "snazzy", "social", "soldier", "south", "special", "speech", "sphinx", "spirit", "spread", "spring", "spritz", "square", "squawk", "starve", "station", "statue", "stick", "storm", "straight", "strange", "street", "strength", "strengths", "stretch", "strike", "strong", "stronghold", "structure", "struggle", "stupid", "stymied", "subject", "submarine", "substance", "substitute", "subversion", "subway", "succeed", "sudden", "suffer", "suggest", "suicide", "summer", "supervise", "supply", "support", "suppose", "suppress", "surface", "surplus", "surprise", "surrender", "surround", "survive", "suspect", "suspend", "swallow", "swivel", "sympathy", "syndrome", "target", "technical", "technology", "telephone", "telescope", "television", "temperature", "temporary", "terrible", "territory", "terror", "terrorist", "theater", "theory", "thing", "threaten", "thriftless", "through", "thumbscrew", "together", "tomorrow", "tonight", "torture", "toward", "tradition", "traffic", "tragic", "transcript", "transgress", "transplant", "transport", "transportation", "travel", "treason", "treasure", "treatment", "treaty", "triphthong", "troops", "trouble", "twelfth", "twelfths", "understand", "universe", "university", "unknown", "unworthy", "uptown", "urgent", "vacation", "vaccine", "valley", "vaporize", "vegetable", "vehicle", "version", "victim", "victory", "village", "violate", "violence", "voice", "volcano", "volunteer", "voodoo", "vortex", "voyeurism", "walkway", "water", "waxy", "wealth", "weapon", "weather", "welcome", "wellspring", "wheezy", "whether", "whiskey", "whizzing", "whomever", "willing", "window", "winter", "witchcraft", "withdraw", "without", "witness", "wizard", "wonder", "wonderful", "worth", "wreckage", "wristwatch", "wyvern", "xylophone", "yachtsman", "yellow", "yesterday", "yippee", "youthful", "zephyr", "zigzag", "zigzagging", "zipper", "zodiac", "zombie"]