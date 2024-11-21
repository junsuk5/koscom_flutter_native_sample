package com.survivalcoding.flutter_native_sample

import kotlinx.coroutines.runBlocking
import org.junit.Assert.*

class TodoRepositoryTest {
//     {
//      "userId": 1,
//      "id": 1,
//      "title": "delectus aut autem",
//      "completed": false
//    }
    private val repository = TodoRepository()

    @org.junit.Test
    fun getTodo() = runBlocking {
        val response = repository.getTodo(1)
        assertEquals(response.code(), 200)
//        assertEquals(
//            response.body().toString(),
//            """{
//      "userId": 1,
//      "id": 1,
//      "title": "delectus aut autem",
//      "completed": false
//    }"""
//        )


    }
}