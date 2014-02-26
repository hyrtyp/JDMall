.class public Lcom/jd/lottery/lib/DependencyProvider;
.super Lcom/jd/droidlib/AbstractDependencyProvider;
.source "DependencyProvider.java"


# instance fields
.field private final dbOpenHelper:Lcom/jd/lottery/lib/db/DBOpenHelper;

.field private jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

.field private mLotteryIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/jd/droidlib/AbstractDependencyProvider;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/jd/lottery/lib/db/DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/jd/lottery/lib/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->dbOpenHelper:Lcom/jd/lottery/lib/db/DBOpenHelper;

    .line 21
    return-void
.end method


# virtual methods
.method public getDBOpenHelper()Lcom/jd/droidlib/persist/sql/AbstractDBOpenHelper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->dbOpenHelper:Lcom/jd/lottery/lib/db/DBOpenHelper;

    return-object v0
.end method

.method public getDialogFactory(Landroid/content/Context;)Lcom/jd/droidlib/util/ui/AbstractDialogFactory;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 44
    new-instance v0, Lcom/jd/droidlib/util/ui/AbstractDialogFactory;

    invoke-direct {v0, p1}, Lcom/jd/droidlib/util/ui/AbstractDialogFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getJsonSerializer()Lcom/jd/droidlib/persist/json/JSONSerializer;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    iget-object v1, p0, Lcom/jd/lottery/lib/DependencyProvider;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;

    return-object v0
.end method

.method public getLotteryIssueManager()Lcom/jd/lottery/lib/data/LotteryIssueManager;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->mLotteryIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/jd/lottery/lib/data/LotteryIssueManager;

    iget-object v1, p0, Lcom/jd/lottery/lib/DependencyProvider;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jd/lottery/lib/data/LotteryIssueManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->mLotteryIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/DependencyProvider;->mLotteryIssueManager:Lcom/jd/lottery/lib/data/LotteryIssueManager;

    return-object v0
.end method
