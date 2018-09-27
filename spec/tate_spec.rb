require 'spec_helper'

describe Tate do
  it 'transliterates a azeri sentence' do
    orig = 'Zəfər, jaketini də papağını da götür, bu axşam hava çox soyuq olacaq. Əvvəl düşün, sonra danış'
    t13n = 'Zefer, zhaketini de papaghini da gotur, bu akhsham hava chokh soyug olajag. Evvel dushun, sonra danish'
    expect(Tate::transliterate(orig, language='az')).to eq(t13n)
  end

  it 'transliterates a bulgarian sentence' do
    orig = 'Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон.'
    t13n = 'Zhaltata dyulya beshe shtastliva, che puhat, koyto tsafna, zamrazna kato gyon.'
    expect(Tate::transliterate(orig, language='bg')).to eq(t13n)
  end

  it 'transliterates a catalan sentence' do
    orig = '«Dóna amor que seràs feliç!». Això, il·lús company geniüt, ja és un lluït rètol blavís d’onze kWh.'
    t13n = '"Dona amor que seras felic!". Aixo, il-lus company geniut, ja es un lluit retol blavis d\'onze kWh.'
    expect(Tate::transliterate(orig, language='ca')).to eq(t13n)
  end

  it 'transliterates a croatian sentence [generic]' do
    orig = 'Gojazni đačić s biciklom drži hmelj i finu vatu u džepu nošnje.'
    t13n = 'Gojazni dacic s biciklom drzi hmelj i finu vatu u dzepu nosnje.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a czech sentence [generic]' do
    orig = 'Nechť již hříšné saxofony ďáblů rozezvučí síň úděsnými tóny waltzu, tanga a quickstepu.'
    t13n = 'Necht jiz hrisne saxofony dablu rozezvuci sin udesnymi tony waltzu, tanga a quickstepu.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a danish sentence [generic]' do
    orig = 'Høj bly gom vandt fræk sexquiz på wc.'
    t13n = 'Hoj bly gom vandt fraek sexquiz pa wc.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a esperanto sentence [generic]' do
    orig = 'Eble ĉiu kvazaŭ-deca fuŝĥoraĵo ĝojigos homtipon.'
    t13n = 'Eble ciu kvazau-deca fushorajo gojigos homtipon.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a estonian sentence [generic]' do
    orig = 'Põdur Zagrebi tšellomängija-följetonist Ciqo külmetas kehvas garaažis.'
    t13n = 'Podur Zagrebi tsellomangija-foljetonist Ciqo kulmetas kehvas garaazis.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a finnish sentence [generic]' do
    orig = 'Wieniläinen sioux’ta puhuva ökyzombie diggaa Åsan roquefort-tacoja.'
    t13n = "Wienilainen sioux'ta puhuva okyzombie diggaa Asan roquefort-tacoja."
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a french sentence' do
    orig = 'Monsieur Jack, vous dactylographiez bien mieux que votre ami Wolf.'
    t13n = 'Monsieur Jack, vous dactylographiez bien mieux que votre ami Wolf.'
    expect(Tate::transliterate(orig, language='fr')).to eq(t13n)
  end

  it 'transliterates a german sentence' do
    orig = 'Falsches Üben von Xylophonmusik quält jeden größeren Zwerg.'
    t13n = 'Falsches Ueben von Xylophonmusik quaelt jeden groesseren Zwerg.'
    expect(Tate::transliterate(orig, language='de')).to eq(t13n)
  end

  it 'transliterates a hungarian sentence' do
    orig = 'Jó foxim és don Quijote húszwattos lámpánál ülve egy pár bűvös cipőt készít.'
    t13n = 'Jo foxim es don Quijote huszwattos lampanal ulve egy par buvos cipot keszit.'
    expect(Tate::transliterate(orig, language='hu')).to eq(t13n)
  end

  it 'transliterates a icelandic sentence [generic]' do
    orig = 'Kæmi ný öxi hér, ykist þjófum nú bæði víl og ádrepa.'
    t13n = 'Kaemi ny oxi her, ykist thjofum nu baedi vil og adrepa.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  # it 'transliterates a irish sentence [generic]' do
  #   orig = 'Ċuaiġ bé ṁórṡáċ le dlúṫspád fíorḟinn trí hata mo ḋea-ṗorcáin ḃig.'
  #   t13n = 'Cuaig be ?or?ac le dlu?spad fior?inn tri hata mo ?ea-?orcain ?ig.'
  #   expect(Tate::transliterate(orig)).to eq(t13n)
  # end

  it 'transliterates a latvian sentence [generic]' do
    orig = 'Muļķa hipiji mēģina brīvi nogaršot celofāna žņaudzējčūsku.'
    t13n = 'Mulka hipiji megina brivi nogarsot celofana znaudzejcusku.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a lithuania sentence [generic]' do
    orig = 'Įlinkdama fechtuotojo špaga sublykčiojusi pragręžė apvalų arbūzą.'
    t13n = 'Ilinkdama fechtuotojo spaga sublykciojusi pragreze apvalu arbuza.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a norwegian sentence [generic]' do
    orig = 'Jeg begynte å fortære en sandwich mens jeg kjørte taxi på vei til quiz.'
    t13n = 'Jeg begynte a fortaere en sandwich mens jeg kjorte taxi pa vei til quiz.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a polish sentence' do
    orig = 'Pójdźże, kiń tę chmurność w głąb flaszy!'
    t13n = 'Pojdzze, kin te chmurnosc w glab flaszy!'
    expect(Tate::transliterate(orig, language='pl')).to eq(t13n)
  end

  it 'transliterates a portuguese sentence [generic]' do
    orig = 'Luís argüia à Júlia que «brações, fé, chá, óxido, pôr, zângão» eram palavras do português.'
    t13n = 'Luis arguia a Julia que "bracoes, fe, cha, oxido, por, zangao" eram palavras do portugues.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a romanian sentence' do
    orig = 'Muzicologă în bej vând whisky și tequila, preț fix.'
    t13n = 'Muzicologa in bej vand whisky si tequila, pret fix.'
    expect(Tate::transliterate(orig, language='ro')).to eq(t13n)
  end

  it 'transliterates a scottish-gaelic sentence [generic]' do
    orig = "Mus d’fhàg Cèit-Ùna ròp Ì le ob."
    t13n = "Mus d'fhag Ceit-Una rop I le ob."
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a slovak sentence [generic]' do
    orig = 'Kŕdeľ šťastných ďatľov učí pri ústí Váhu mĺkveho koňa obhrýzať kôru a žrať čerstvé mäso.'
    t13n = 'Krdel stastnych datlov uci pri usti Vahu mlkveho kona obhryzat koru a zrat cerstve maso.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a slovenian sentence [generic]' do
    orig = 'Hišničin bratec vzgaja polže pod fikusom.'
    t13n = 'Hisnicin bratec vzgaja polze pod fikusom.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a spanish sentence' do
    orig = 'Benjamín pidió una bebida de kiwi y fresa; Noé, sin vergüenza, la más exquisita champaña del menú.'
    t13n = 'Benjamin pidio una bebida de kiwi y fresa; Noe, sin verguenza, la mas exquisita champana del menu.'
    expect(Tate::transliterate(orig, language='es')).to eq(t13n)
  end

  it 'transliterates a swedish sentence [generic]' do
    orig = 'Flygande bäckasiner söka hwila på mjuka tuvor.'
    t13n = 'Flygande backasiner soka hwila pa mjuka tuvor.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a turkish sentence [generic]' do
    orig = 'Pijamalı hasta yağız şoföre çabucak güvendi.'
    t13n = 'Pijamali hasta yagiz sofore cabucak guvendi.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  it 'transliterates a vietnamese sentence' do
    orig = 'Do bạch kim rất quý nên sẽ dùng để lắp vô xương.'
    t13n = 'Do bach kim rat quy nen se dung de lap vo xuong.'
    expect(Tate::transliterate(orig, language='vi')).to eq(t13n)
  end

  it 'transliterates a welsh sentence [generic]' do
    orig = 'Parciais fy jac codi baw hud llawn dŵr ger tŷ Mabon.'
    t13n = 'Parciais fy jac codi baw hud llawn dwr ger ty Mabon.'
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  # @TODO
  # it 'transliterates a yoruba sentence [generic]' do
  #   orig = 'Ìwò̩fà ń yò̩ séji tó gbojúmó̩, ó hàn pákànpò̩ gan-an nis̩é̩ rè̩ bó dò̩la.'
  #   t13n = 'Iwo?fa n yo? seji to gbojumo?, o han pakanpo? gan-an nis?e? re? bo do?la.'
  #   expect(Tate::transliterate(orig)).to eq(t13n)
  # end

  it 'transliterates non-ascii punctuation' do
    orig = "¾ ≠ ½ and ½ ≤ ¾, ∴ ¾×10³ m² ≥ ½×10³ m²…"
    t13n = "3/4 =/= 1/2 and 1/2 <= 3/4, therefore 3/4*10^3 m^2 => 1/2*10^3 m^2..."
    expect(Tate::transliterate(orig)).to eq(t13n)
  end

  # @TODO
  # it 'strips terminal escape codes (color)' do
  #   orig = "Roses are [0;31mred[0m, violets are [0;34mblue. Hope you enjoy terminal hue"
  #   t13n = "Roses are red, violets are blue. Hope you enjoy terminal hue"
  #   expect(Tate::transliterate(orig)).to eq(t13n)
  # end

  # @TODO
  # it 'strips terminal escape codes (spacing)' do
  #   orig = "But now...[20Cfor my greatest trick...[8m"
  #   t13n = "But now...for my greatest trick..."
  #   expect(Tate::transliterate(orig)).to eq(t13n)
  # end

  # @TODO
  # it 'strips terminal escape codes (bell)' do
  #   orig = "The quick brown fox... [Beeeep]"
  #   t13n = "The quick brown fox... [Beeeep]"
  #   expect(Tate::transliterate(orig)).to eq(t13n)
  # end
end
