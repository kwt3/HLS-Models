#include <ap_int.h>

// Base class
class Counter {
protected:
    ap_uint<4> count;
public:
    Counter() : count(0) {}
    virtual void increment(ap_uint<1> reset, ap_uint<4> &out) = 0;  // Pure virtual function
};

// Derived class for 4-bit counter
class Counter4 : public Counter {
public:
    void increment(ap_uint<1> reset, ap_uint<4> &out);
};

// Derived class for 1-12 counter
class Counter12 : public Counter {
public:
    void increment(ap_uint<1> reset, ap_uint<4> &out);
};
