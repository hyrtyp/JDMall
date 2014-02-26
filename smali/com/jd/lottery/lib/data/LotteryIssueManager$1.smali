.class Lcom/jd/lottery/lib/data/LotteryIssueManager$1;
.super Ljava/lang/Object;
.source "LotteryIssueManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Ljava/util/ArrayList;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)I
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
.field final synthetic this$0:Lcom/jd/lottery/lib/data/LotteryIssueManager;

.field private final synthetic val$flag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

.field private final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/data/LotteryIssueManager;Ljava/util/ArrayList;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->this$0:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    iput-object p2, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->val$flag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, count:I
    iget-object v3, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 110
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/LotteryEntity;

    .line 111
    .local v1, item:Lcom/jd/lottery/lib/model/LotteryEntity;
    const/4 v2, 0x0

    .line 112
    .local v2, success:Z
    iget-object v4, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->this$0:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    iget-object v5, p0, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->val$flag:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v4, v1, v5}, Lcom/jd/lottery/lib/data/LotteryIssueManager;->createOrUpdate(Lcom/jd/lottery/lib/model/LotteryEntity;Lcom/jd/lottery/lib/data/Constants$IssueFlag;)Z

    move-result v2

    .line 113
    if-eqz v2, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/LotteryIssueManager$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
