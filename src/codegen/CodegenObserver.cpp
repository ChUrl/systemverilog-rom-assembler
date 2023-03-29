//
// Created by christoph on 21.03.23.
//

#include "CodegenObserver.h"
#include <bitset>

CodegenObserver::CodegenObserver(const Node &node, std::vector<std::string> &output_string)
        : PostfixObserver(node), output_string(output_string) {}

void CodegenObserver::action(const Node &node) {
    const uint8_t dec = node.compile();
    const uint8_t INVALID = -1;

    // TODO: Don't do the conversion to binary here, but in generator module
    if (dec != INVALID) {
        // uint8_t is always interpreted as char, so cast to uint32_t
        const std::string bin = std::bitset<8>(dec).to_string();
        if (bin.empty() || bin.size() > 8) {
            throw "Compile Error: Resulting instruction has invalid size!";
        }
        output_string.push_back(bin);
    }
}
