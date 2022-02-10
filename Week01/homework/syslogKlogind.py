import syslogCheck
import importlib
importlib.reload(syslogCheck)

# SSH authentication failures
def klogind(filename, searchTerms):

    # Call syslogCheck and return the results
    is_found = syslogCheck._syslog(filename,searchTerms)

    # found list
    found = []

    # Loop through the results
    for eachFound in is_found:

        #print(eachFound)
        # Split the results
        sp_results = eachFound.split(" ")

        # Append the split value to the found list
        # The fourth element is the user name
        found.append(sp_results[4])

    # Remove duplicates by using set 
    # and convert the list to a dictionary
    hosts = set(found)
    
    # Print results
    for eachHost in hosts:

        print(eachHost)