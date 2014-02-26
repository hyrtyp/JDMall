.class public Lcom/jd/common/util/Sequence;
.super Ljava/lang/Object;
.source "Sequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/common/util/Sequence$Step;
    }
.end annotation


# static fields
.field private static final GET_SQL:Ljava/lang/String; = "select id from sequence_value where name = ?"

.field private static final NEW_SQL:Ljava/lang/String; = "insert into sequence_value (id,name) values (?,?)"

.field private static final UPDATE_SQL:Ljava/lang/String; = "update sequence_value set id = ?  where name = ? and id = ?"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private blockSize:I

.field private dataSource:Ljavax/sql/DataSource;

.field private startValue:J

.field private stepMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/common/util/Sequence$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jd/common/util/Sequence;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/jd/common/util/Sequence;->blockSize:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jd/common/util/Sequence;->startValue:J

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jd/common/util/Sequence;->stepMap:Ljava/util/Map;

    .line 20
    return-void
.end method

.method private getNextBlock(Ljava/lang/String;Lcom/jd/common/util/Sequence$Step;)Z
    .locals 7
    .parameter "sequenceName"
    .parameter "step"

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/jd/common/util/Sequence;->getPersistenceValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 35
    .local v2, value:Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 37
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jd/common/util/Sequence;->newPersistenceValue(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p1}, Lcom/jd/common/util/Sequence;->saveValue(JLjava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 44
    .local v0, b:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/jd/common/util/Sequence$Step;->setCurrentValue(J)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, p0, Lcom/jd/common/util/Sequence;->blockSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Lcom/jd/common/util/Sequence$Step;->setEndValue(J)V

    .line 48
    :cond_1
    return v0

    .line 38
    .end local v0           #b:Z
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "newPersistenceValue error!"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/jd/common/util/Sequence;->getPersistenceValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 43
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getPersistenceValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .parameter "sequenceName"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, connection:Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 109
    .local v3, statement:Ljava/sql/PreparedStatement;
    const/4 v2, 0x0

    .line 111
    .local v2, resultSet:Ljava/sql/ResultSet;
    :try_start_0
    iget-object v4, p0, Lcom/jd/common/util/Sequence;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v4}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 112
    const-string v4, "select id from sequence_value where name = ?"

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 113
    const/4 v4, 0x1

    invoke-interface {v3, v4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 114
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 116
    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 131
    :try_start_2
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 138
    :try_start_3
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :cond_2
    :goto_2
    return-object v4

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/sql/SQLException;
    sget-object v5, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "close resultset error!"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_1
    move-exception v1

    .line 133
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v5, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "close statement error!"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_2
    move-exception v1

    .line 140
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v5, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "close connection error!"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 118
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_3
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "getPersistenceValue error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 120
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getPersistenceValue error!"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 122
    if-eqz v2, :cond_3

    .line 124
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    .line 129
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 131
    :try_start_6
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_5

    .line 136
    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 138
    :try_start_7
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_6

    .line 143
    :cond_5
    :goto_5
    throw v4

    .line 125
    :catch_4
    move-exception v1

    .line 126
    .local v1, e:Ljava/sql/SQLException;
    sget-object v5, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "close resultset error!"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 132
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_5
    move-exception v1

    .line 133
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v5, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "close statement error!"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 139
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_6
    move-exception v1

    .line 140
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v5, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "close connection error!"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 122
    .end local v1           #e:Ljava/sql/SQLException;
    :cond_6
    if-eqz v2, :cond_7

    .line 124
    :try_start_8
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_7

    .line 129
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 131
    :try_start_9
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_8

    .line 136
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 138
    :try_start_a
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_9

    .line 144
    :cond_9
    :goto_8
    const/4 v4, 0x0

    goto :goto_2

    .line 125
    :catch_7
    move-exception v1

    .line 126
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close resultset error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 132
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_8
    move-exception v1

    .line 133
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close statement error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 139
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_9
    move-exception v1

    .line 140
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close connection error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private newPersistenceValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "sequenceName"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, connection:Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 151
    .local v2, statement:Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v3, p0, Lcom/jd/common/util/Sequence;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v3}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 152
    const-string v3, "insert into sequence_value (id,name) values (?,?)"

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 153
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/jd/common/util/Sequence;->startValue:J

    invoke-interface {v2, v3, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 154
    const/4 v3, 0x2

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 155
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    if-eqz v2, :cond_0

    .line 162
    :try_start_1
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 167
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 169
    :try_start_2
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 175
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/jd/common/util/Sequence;->startValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "newPersistenceValue error!"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 158
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "newPersistenceValue error!"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 160
    if-eqz v2, :cond_2

    .line 162
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 167
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 169
    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 174
    :cond_3
    :goto_3
    throw v3

    .line 163
    :catch_1
    move-exception v1

    .line 164
    .local v1, e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close statement error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 170
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_2
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close connection error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 163
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_3
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v3, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "close statement error!"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_4
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v3, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "close connection error!"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private saveValue(JLjava/lang/String;)I
    .locals 6
    .parameter "value"
    .parameter "sequenceName"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, connection:Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 79
    .local v2, statement:Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v3, p0, Lcom/jd/common/util/Sequence;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v3}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 80
    const-string v3, "update sequence_value set id = ?  where name = ? and id = ?"

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 81
    const/4 v3, 0x1

    iget v4, p0, Lcom/jd/common/util/Sequence;->blockSize:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    invoke-interface {v2, v3, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 82
    const/4 v3, 0x2

    invoke-interface {v2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 83
    const/4 v3, 0x3

    invoke-interface {v2, v3, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 84
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 89
    if-eqz v2, :cond_0

    .line 91
    :try_start_1
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    :try_start_2
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    :cond_1
    :goto_1
    return v3

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close statement error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_1
    move-exception v1

    .line 100
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close connection error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_2
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "newPersistenceValue error!"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 87
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "newPersistenceValue error!"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 89
    if-eqz v2, :cond_2

    .line 91
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 96
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 98
    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    .line 103
    :cond_3
    :goto_3
    throw v3

    .line 92
    :catch_3
    move-exception v1

    .line 93
    .local v1, e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close statement error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 99
    .end local v1           #e:Ljava/sql/SQLException;
    :catch_4
    move-exception v1

    .line 100
    .restart local v1       #e:Ljava/sql/SQLException;
    sget-object v4, Lcom/jd/common/util/Sequence;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "close connection error!"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)J
    .locals 8
    .parameter "sequenceName"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/jd/common/util/Sequence;->stepMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/common/util/Sequence$Step;

    .line 58
    .local v1, step:Lcom/jd/common/util/Sequence$Step;
    if-nez v1, :cond_1

    .line 60
    new-instance v1, Lcom/jd/common/util/Sequence$Step;

    .end local v1           #step:Lcom/jd/common/util/Sequence$Step;
    iget-wide v2, p0, Lcom/jd/common/util/Sequence;->startValue:J

    iget-wide v4, p0, Lcom/jd/common/util/Sequence;->startValue:J

    iget v6, p0, Lcom/jd/common/util/Sequence;->blockSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/jd/common/util/Sequence$Step;-><init>(JJ)V

    .line 61
    .restart local v1       #step:Lcom/jd/common/util/Sequence$Step;
    iget-object v2, p0, Lcom/jd/common/util/Sequence;->stepMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/jd/common/util/Sequence;->blockSize:I

    if-lt v0, v2, :cond_2

    .line 72
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No more value."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0           #i:I
    .end local v1           #step:Lcom/jd/common/util/Sequence$Step;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 63
    .restart local v1       #step:Lcom/jd/common/util/Sequence$Step;
    :cond_1
    :try_start_1
    #getter for: Lcom/jd/common/util/Sequence$Step;->currentValue:J
    invoke-static {v1}, Lcom/jd/common/util/Sequence$Step;->access$0(Lcom/jd/common/util/Sequence$Step;)J

    move-result-wide v2

    #getter for: Lcom/jd/common/util/Sequence$Step;->endValue:J
    invoke-static {v1}, Lcom/jd/common/util/Sequence$Step;->access$1(Lcom/jd/common/util/Sequence$Step;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/jd/common/util/Sequence$Step;->incrementAndGet()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 69
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 68
    .restart local v0       #i:I
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/jd/common/util/Sequence;->getNextBlock(Ljava/lang/String;Lcom/jd/common/util/Sequence$Step;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v1}, Lcom/jd/common/util/Sequence$Step;->incrementAndGet()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    goto :goto_1

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBlockSize(I)V
    .locals 0
    .parameter "blockSize"

    .prologue
    .line 187
    iput p1, p0, Lcom/jd/common/util/Sequence;->blockSize:I

    .line 188
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .parameter "dataSource"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/jd/common/util/Sequence;->dataSource:Ljavax/sql/DataSource;

    .line 184
    return-void
.end method

.method public setStartValue(J)V
    .locals 0
    .parameter "startValue"

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/jd/common/util/Sequence;->startValue:J

    .line 192
    return-void
.end method
