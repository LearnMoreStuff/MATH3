#include <iostream>
#include <thread>
#include <chrono>

int main() {
    std::string name;

    std::cout << "Hello, What is your name?" << std::endl;
    std::cin >> name;

    std::cout << "Hi " << name << " thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!" << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(1));

    std::cout << "If you get the math wrong you start over!!" << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::this_thread::sleep_for(std::chrono::seconds(1));

    int math;

    std::cout << "What is 1+1" << std::endl;
    std::cin >> math;

    if (2 == math) {
        std::cout << "Thats right" << std::endl;
    } else {
        std::cout << "Wrong" << std::endl;
        return 1;
    }

    std::this_thread::sleep_for(std::chrono::seconds(2));

    std::cout << "What is 2+2" << std::endl;
    std::cin >> math;

    if (4 == math) {
        std::cout << "Thats right" << std::endl;
    } else {
        std::cout << "Wrong" << std::endl;
        return 1;
    }

    // Repeat the pattern for the remaining questions...

    std::cout << "What is 10+10" << std::endl;
    std::cin >> math;

    if (20 == math) {
        std::cout << "Thats right" << std::endl;
    } else {
        std::cout << "Wrong" << std::endl;
    }

    std::cout << "What is " << std::endl;
    std::cin >> math;

    if (20 == math) {
        std::cout << "Thats right" << std::endl;
    } else {
        std::cout << "Wrong" << std::endl;
    }

    return 0;
}
