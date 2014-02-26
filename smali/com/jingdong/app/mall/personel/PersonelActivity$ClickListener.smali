.class Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 763
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 864
    :goto_0
    return-void

    .line 770
    :sswitch_0
    new-instance v5, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;

    invoke-direct {v5, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;Landroid/view/View;)V

    .line 780
    .local v5, runnableMessages:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v5}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 784
    .end local v5           #runnableMessages:Ljava/lang/Runnable;
    :sswitch_1
    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$2;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$2;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;Landroid/view/View;)V

    .line 793
    .local v2, runnableCollect:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v2}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 797
    .end local v2           #runnableCollect:Ljava/lang/Runnable;
    :sswitch_2
    new-instance v3, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$3;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$3;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V

    .line 804
    .local v3, runnableDiscuss:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v3}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 808
    .end local v3           #runnableDiscuss:Ljava/lang/Runnable;
    :sswitch_3
    new-instance v4, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$4;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$4;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V

    .line 815
    .local v4, runnableEasybuy:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v4}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 819
    .end local v4           #runnableEasybuy:Ljava/lang/Runnable;
    :sswitch_4
    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$5;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V

    .line 826
    .local v1, runnableBack:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v1}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 830
    .end local v1           #runnableBack:Ljava/lang/Runnable;
    :sswitch_5
    new-instance v6, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$6;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$6;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V

    .line 836
    .local v6, runnableSafe:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v6}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 842
    .end local v6           #runnableSafe:Ljava/lang/Runnable;
    :sswitch_6
    const-string v8, "personal_online_tip"

    invoke-static {v8}, Lcom/jingdong/app/mall/utils/CommonUtil;->activityIsGuided(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 843
    iget-object v8, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/16 v9, 0x8

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->optionsViewVisibility(I)V
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$22(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    .line 844
    const-string v8, "personal_online_tip"

    invoke-static {v8}, Lcom/jingdong/app/mall/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 846
    :cond_0
    new-instance v7, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$7;

    invoke-direct {v7, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$7;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V

    .line 852
    .local v7, runnableService:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v9, v7}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 856
    .end local v7           #runnableService:Ljava/lang/Runnable;
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const-class v9, Lcom/jingdong/app/mall/more/MoreActivity;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 857
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v8, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 767
    :sswitch_data_0
    .sparse-switch
        0x7f0c0002 -> :sswitch_3
        0x7f0c04c7 -> :sswitch_1
        0x7f0c04cc -> :sswitch_2
        0x7f0c04d1 -> :sswitch_0
        0x7f0c04db -> :sswitch_5
        0x7f0c04e1 -> :sswitch_4
        0x7f0c04e6 -> :sswitch_6
        0x7f0c071c -> :sswitch_7
    .end sparse-switch
.end method
