#include <filesystem>
#include <iostream>

int main() {
	auto example_path = (std::filesystem::path)"foo" / "bar" / "baz";
	std::cout << example_path << std::endl;
	return 0;
}
