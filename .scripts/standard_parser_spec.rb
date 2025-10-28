# frozen_string_literal: true

require 'active_support/core_ext/string'

require_relative './standard_parser.rb'

RSpec.describe StandardParser do
  subject(:parser) { described_class.new(content) }

  let(:content) { <<~STANDARD
    # l'équipe regarde la route avant de traverser

    ## Description

    Pour éviter une fin prématurée l'équipe regarde des deux côtés de
    la route avant de traverser.

    ### à gauche

    On doit regarder

    ### à droite

    On doit aussi regarder

    ## Ressources

    - [Traversage de route - gouv.fr](https://gouv.fr/howto/traversage-de-route)

    ## Critères

    - l'équipe a regardé à droite
    - l'équipe a regardé à gauche
  STANDARD
  }

  it "can parse the title" do
    expect(parser.title).to eq "l'équipe regarde la route avant de traverser"
  end

  it "can parse the sections" do
    expect(parser.sections).to contain_exactly "Description", "Ressources", "Critères"
  end

  it "can map the criteria" do
    expect(parser.list_section_to_array("Critères"))
      .to contain_exactly "l'équipe a regardé à droite", "l'équipe a regardé à gauche"
  end

  it "can map the resources" do
    # turns out that Kramdown converts links to the shorthand syntax
    expect(parser.list_section_to_array("Ressources"))
      .to contain_exactly "[Traversage de route - gouv.fr][1]


[1]: https://gouv.fr/howto/traversage-de-route"
  end

  it "can grab the content of a section" do
    section = <<~SECTION
Pour éviter une fin prématurée l'équipe regarde des deux côtés de la
route avant de traverser.

### à gauche

On doit regarder

### à droite

On doit aussi regarder
SECTION

    expect(parser.content_for_section("Description").chomp).to eq section
  end
end
