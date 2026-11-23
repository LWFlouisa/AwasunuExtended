def purge_outdated
  system("rm -f _adaptation/ruleset_shift1.txt; rm -f _adaptation/ruleset_shift2.txt;
          rm -f _adaptation/ruleset_shift2.txt; rm -f _adaptation/ruleset_shift3.txt;
          rm -f _adaptation/ruleset_shift4.txt; rm -f _adaptation/ruleset_shift5.txt;
          rm -f _adaptation/ruleset_shift6.txt; rm -f _adaptation/ruleset_shift7.txt;
          rm -f _adaptation/ruleset_shift8.txt; rm -f _adaptation/ruleset_shift9.txt")
end

purge_outdated
