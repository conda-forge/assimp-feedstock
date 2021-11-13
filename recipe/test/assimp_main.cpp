#include <assimp/Importer.hpp>   

#include <cstdlib>
#include <iostream>

int main()
{
    // Create an instance of the Importer class
    Assimp::Importer importer;
    
    std::cerr << "Number of importers currently registered with Assimp: " 
              << importer.GetImporterCount() << std::endl;
    
    return EXIT_SUCCESS;
}
