.class Lcom/jingdong/app/mall/personel/MyWebMessage$1;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
