
[1mFrom:[0m /mnt/c/Users/arhal/OneDrive/Documents/CodeLabs - BE/usa_covid_19_tracker/covid_tracker/lib/scraper.rb:36 Scraper.scrape_state:

    [1;34m23[0m: [32mdef[0m [1;36mself[0m.[1;34mscrape_state[0m
    [1;34m24[0m:     puts [31m[1;31m"[0m[31mScraping U.S. State Information...[1;31m"[0m[31m[0m
    [1;34m25[0m:     doc = [1;34;4mNokogiri[0m::HTML([1;34;4mURI[0m.open([1;34;4mSCRAPE_URL[0m))
    [1;34m26[0m: 
    [1;34m27[0m:     doc.css([31m[1;31m"[0m[31mtbody tr[1;31m"[0m[31m[0m)[[1;34m1[0m..[1;34m51[0m].each [32mdo[0m |state_row|
    [1;34m28[0m:         row = state_row.css([31m[1;31m"[0m[31mtd[1;31m"[0m[31m[0m)
    [1;34m29[0m:         name = row[[1;34m1[0m].text.split([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m).join([31m[1;31m"[0m[31m[1;31m"[0m[31m[0m)
    [1;34m30[0m:         cases = text_to_integer(row[[1;34m2[0m].text)
    [1;34m31[0m:         deaths = text_to_integer(row[[1;34m4[0m].text)
    [1;34m32[0m:         recoveries = text_to_integer(row[[1;34m6[0m].text)
    [1;34m33[0m:         [1;34;4mState[0m.new(name, cases, deaths, recoveries)
    [1;34m34[0m:     [32mend[0m
    [1;34m35[0m: 
 => [1;34m36[0m:     binding.pry
    [1;34m37[0m: [32mend[0m

