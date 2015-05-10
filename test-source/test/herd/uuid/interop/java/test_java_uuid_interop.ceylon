import ceylon.test {
    test,
    assertEquals
}

import herd.uuid {
    uuid4Random
}
import herd.uuid.interop.java {
    toJavaUuid,
    toUuid
}

import java.util {
    JUUID=UUID {
        randomUUID
    }
}

test
void testToJavaUuid() {
    value uuid = uuid4Random();
    value javaUuid = toJavaUuid(uuid);
    
    assertEquals(javaUuid.string, uuid.string);
}

test
void testToUuid() {
    value javaUuid = randomUUID();
    value uuid = toUuid(javaUuid);
    
    assertEquals(uuid.string, javaUuid.string);
}
