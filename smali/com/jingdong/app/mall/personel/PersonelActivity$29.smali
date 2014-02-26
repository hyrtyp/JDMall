.class Lcom/jingdong/app/mall/personel/PersonelActivity$29;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$pinName:Ljava/lang/String;

.field private final synthetic val$sUserName:Ljava/lang/String;

.field private final synthetic val$sUserPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$sUserName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$sUserPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$pinName:Ljava/lang/String;

    .line 2552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2556
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$11(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2558
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->isShowDialog:Z

    .line 2559
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    .line 2561
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/common/login/SafetyManager;->setRemember(Z)V

    .line 2562
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$sUserName:Ljava/lang/String;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$sUserPassword:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/login/SafetyManager;->saveSafety(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2565
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$sUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$sUserName:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->saveUserName(Ljava/lang/String;)V

    .line 2571
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->loginAfterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$67(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2579
    :goto_1
    return-void

    .line 2568
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$29;->val$pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->saveUserName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2573
    :catch_0
    move-exception v0

    goto :goto_1
.end method
