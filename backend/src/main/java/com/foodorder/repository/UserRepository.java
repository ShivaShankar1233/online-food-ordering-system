package com.foodorder.repository;

public interface UserRepository {
    // Define methods for UserRepository
    User findById(Long id);
    List<User> findAll();
    void save(User user);
    void deleteById(Long id);
}