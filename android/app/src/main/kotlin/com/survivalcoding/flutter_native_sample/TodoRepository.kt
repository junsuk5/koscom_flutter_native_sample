package com.survivalcoding.flutter_native_sample

class TodoRepository {
    private val dataSource = TodoDataSource.instance()

    suspend fun getTodo(id: Int) = dataSource.getTodo(id)
}