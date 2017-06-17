#include <mutex>
#include <string>

std::mutex::~mutex()
{
    __libcpp_mutex_destroy(&__m_);
}

void * operator new(std::size_t size)
{
    if (size == 0)
        size = 1;
    return malloc(size);
}

template class std::basic_string<char, std::char_traits<char>, std::allocator<char> >;