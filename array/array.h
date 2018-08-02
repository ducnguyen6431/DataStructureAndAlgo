#pragma once

#define DEFAULT_SIZE    16

template<typename T>
class Array {
private:
    T *data_ptr;
public:
    Array();
    Array(size_t size);
    Array(T initial_object);
    Array(const Array src_arr);
    Array(&& Array src_arr);
    int append(const *T obj);
    int prepend(const *T obj);
    int remove(const *T obj);
    int remove(int index);
    int size();
    T pop();
    int push(const *T obj);

    ~Array();
};