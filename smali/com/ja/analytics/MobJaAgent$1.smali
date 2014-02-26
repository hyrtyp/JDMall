.class Lcom/ja/analytics/MobJaAgent$1;
.super Ljava/lang/Object;
.source "MobJaAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/analytics/MobJaAgent;->SessionAccumulate(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ja/analytics/MobJaAgent$1;->val$context:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ja/analytics/MobJaAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ja/analytics/net/HttpUtils;->sendSessionData(Landroid/content/Context;)V

    .line 55
    return-void
.end method
