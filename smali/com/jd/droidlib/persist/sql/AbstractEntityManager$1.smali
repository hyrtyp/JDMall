.class Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;
.super Ljava/lang/Object;
.source "AbstractEntityManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/droidlib/persist/sql/AbstractEntityManager;->cud(Ljava/util/Collection;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;

.field private final synthetic val$items:Ljava/util/Collection;

.field private final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/jd/droidlib/persist/sql/AbstractEntityManager;Ljava/util/Collection;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->this$0:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;

    iput-object p2, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->val$items:Ljava/util/Collection;

    iput p3, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->val$operation:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, count:I
    iget-object v3, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->val$items:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 107
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/droidlib/model/Entity;

    .line 108
    .local v1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    const/4 v2, 0x0

    .line 109
    .local v2, success:Z
    iget v4, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->val$operation:I

    packed-switch v4, :pswitch_data_0

    .line 120
    :goto_1
    if-eqz v2, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v4, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->this$0:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;

    invoke-virtual {v4, v1}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    move-result v2

    .line 112
    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v4, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->this$0:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;

    invoke-virtual {v4, v1}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;->update(Lcom/jd/droidlib/model/Entity;)Z

    move-result v2

    .line 115
    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v4, p0, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->this$0:Lcom/jd/droidlib/persist/sql/AbstractEntityManager;

    iget-wide v5, v1, Lcom/jd/droidlib/model/Entity;->id:J

    invoke-virtual {v4, v5, v6}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager;->delete(J)Z

    move-result v2

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jd/droidlib/persist/sql/AbstractEntityManager$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
